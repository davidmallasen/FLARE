//
// Created by R on 3/25/23.
//

#include "lstm.hpp"

namespace fl
{


template<typename Activation, typename GateActivation, bool ReturnSequences>
LSTM<Activation, GateActivation, ReturnSequences>::LSTM(
        Eigen::Index input_len, Eigen::Index output_len,
        const Initializer<2> &initializer)
        : input_len(input_len),
          output_len(output_len)
{
    this->name = "lstm";
    this->w = initializer(Dims<2>(input_len + output_len, output_len * 4),
                          static_cast<int>(input_len),
                          static_cast<int>(output_len));
    this->dL_dw.resize(this->w.dimensions());

    // for testing purposes, set weights to one
    this->w.setConstant(1.0);
}


template<typename Activation, typename GateActivation, bool ReturnSequences>
void LSTM<Activation, GateActivation, ReturnSequences>::Forward(
        const Tensor<3> &inputs)
{
    fl_assert(inputs.dimension(1) > 0,
              this->name << " expected an input with time dimension > 0");
    fl_assert(inputs.dimension(2) == this->input_len,
              this->name << " expected an input of "
                         << Dims<3>(-1, -1, this->input_len) << " got "
                         << inputs.dimensions() << " instead");

    this->x.resize(inputs.dimensions());
    this->x.device(device) = inputs;

    this->h.resize(inputs.dimension(0), inputs.dimension(1), this->output_len);
    this->cs.resize(this->h.dimensions());

    if (this->lstm_cells.size() < inputs.dimension(1)) {
        int num_new_cells = inputs.dimension(1) - this->lstm_cells.size();

        for (int i = 0; i < num_new_cells; i++) {
            this->lstm_cells.push_back(
                    LSTMCell<Activation, GateActivation>(
                            this->lstm_cells.size(), this->input_len,
                            this->output_len));
        }
    }

    for (auto &cell: this->lstm_cells) {
        cell.Forward(inputs, this->w, this->h, this->cs, this->device);
    }

    if constexpr (!ReturnSequences) {
        this->h_no_seq.resize(inputs.dimension(0), this->output_len);
        this->h_no_seq.device(device) = this->h.chip(inputs.dimension(1) - 1, 1);
    }
}


template<typename Activation, typename GateActivation, bool ReturnSequences>
void LSTM<Activation, GateActivation, ReturnSequences>::Forward(const Layer &prev)
{
    this->Forward(prev.GetOutput3D());
}


template<typename Activation, typename GateActivation, bool ReturnSequences>
void LSTM<Activation, GateActivation, ReturnSequences>::Backward(
        const Tensor<2> &gradients)
{
    Eigen::Index time_steps = this->x.dimension(1);

    this->dL_dw.setZero();
    this->lstm_cells.back().Backward(
            gradients, w, dL_dw,
            cs, fl::Tensor<2>(gradients.dimension(0), output_len).constant(0),
            device
    );

    for (auto i = time_steps - 2; i >= 0; i--) {
        lstm_cells[i].Backward(
                lstm_cells[i + 1].GetInputGradientsHprev(), w, dL_dw,
                cs, lstm_cells[i + 1].GetInputGradientsCprev(),
                device
        );
    }
}


template<typename Activation, typename GateActivation, bool ReturnSequences>
void LSTM<Activation, GateActivation, ReturnSequences>::Backward(
        const Tensor<3> &gradients)
{
    if constexpr(!ReturnSequences) {
        throw std::logic_error(
                this->name +
                " Backward(Tensor<3>) called with ReturnSequences=false");
    }

    this->dL_dw.setZero();
    Eigen::Index time_steps = this->x.dimension(1);

    this->lstm_cells.back().Backward(
            gradients.chip(time_steps - 1, 1),
            w, dL_dw,
            cs, fl::Tensor<2>(gradients.dimension(0), output_len).constant(0),
            device
    );

    for (auto i = time_steps - 2; i >= 0; i--) {
        lstm_cells[i].Backward(
                gradients.chip(i, 1) +
                this->lstm_cells[i + 1].GetInputGradientsHprev(),
                w, dL_dw,
                cs, lstm_cells[i + 1].GetInputGradientsCprev(),
                device
        );
    }
}


template<typename Activation, typename GateActivation, bool ReturnSequences>
void
LSTM<Activation, GateActivation, ReturnSequences>::Backward(Layer &next)
{
    if constexpr(ReturnSequences) {
        this->Backward(next.GetInputGradients3D());
    }
    else {
        this->Backward(next.GetInputGradients2D());
    }
}


template<typename Activation, typename GateActivation, bool ReturnSequences>
void LSTM<Activation, GateActivation, ReturnSequences>::Update(Optimizer &optimizer)
{
    optimizer.Minimize(this->w, this->dL_dw);
}


template<typename Activation, typename GateActivation, bool ReturnSequences>
const Tensor<2> &
LSTM<Activation, GateActivation, ReturnSequences>::GetOutput2D() const
{
    if constexpr(ReturnSequences) {
        throw std::logic_error(
                this->name +
                " was initialized with ReturnSequences=true, use GetOutput3D instead");
    }

    return this->h_no_seq;
}


template<typename Activation, typename GateActivation, bool ReturnSequences>
const Tensor<3> &
LSTM<Activation, GateActivation, ReturnSequences>::GetOutput3D() const
{
    if constexpr(!ReturnSequences) {
        throw std::logic_error(
                this->name +
                " was initialized with ReturnSequences=false, use GetOutput2D instead");
    }

    return this->h;
}


template<typename Activation, typename GateActivation, bool ReturnSequences>
const Tensor<3> &
LSTM<Activation, GateActivation, ReturnSequences>::GetInputGradients3D()
{
    this->dL_dx.resize(this->x.dimensions());
    int time_steps = static_cast<int>(this->x.dimension(1));

    for (int i = time_steps - 1; i >= 0; --i) {
        this->lstm_cells[i].CalcInputGradients(
                this->dL_dx, this->w, this->device);
    }

    return this->dL_dx;
}


template<typename Activation, typename GateActivation, bool ReturnSequences>
const Tensor<2> &
LSTM<Activation, GateActivation, ReturnSequences>::GetWeights() const
{
    return this->w;
}


template<typename Activation, typename GateActivation, bool ReturnSequences>
const Tensor<2> &
LSTM<Activation, GateActivation, ReturnSequences>::GetWeightGradients() const
{
    return this->dL_dw;
}


template<typename Activation, typename GateActivation, bool ReturnSequences>
void LSTM<Activation, GateActivation, ReturnSequences>::SetWeights(
        const Tensor<2> &weights)
{
    this->w = weights;
}


template<typename Activation, typename GateActivation, bool ReturnSequences>
int LSTM<Activation, GateActivation, ReturnSequences>::GetInputRank() const
{
    return 3;
}


template<typename Activation, typename GateActivation, bool ReturnSequences>
int LSTM<Activation, GateActivation, ReturnSequences>::GetOutputRank() const
{
    if constexpr(ReturnSequences) {
        return 2;
    }
    else {
        return 3;
    }
}


template<typename Activation, typename GateActivation, bool ReturnSequences>
void LSTM<Activation, GateActivation, ReturnSequences>::Save(const std::string &path)
{
    Layer::Save(path);
}


template<typename Activation, typename GateActivation, bool ReturnSequences>
void LSTM<Activation, GateActivation, ReturnSequences>::Load(
        const std::string &path)
{
    Layer::Load(path);
}

} // namespace fl
