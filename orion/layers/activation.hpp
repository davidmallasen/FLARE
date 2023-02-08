//
// Created by Raymond on 1/18/23.
//

#ifndef ORION_ACTIVATION_H
#define ORION_ACTIVATION_H

#include "layer.hpp"

namespace orion
{

template<typename activation, int TensorRank>
class Activation : public Layer
{
public:
    Activation();

    virtual void Forward(const Tensor<TensorRank> &inputs) override;

    void Forward(const Layer &prev) override;

    void Backward(const Tensor<TensorRank> &gradients) override;

    void Backward(Layer &next) override;

    void Update(Optimizer &) override;

    const Tensor<2> &GetOutput2D() const override;

    const Tensor<3> &GetOutput3D() const override;

    const Tensor<4> &GetOutput4D() const override;

    const Tensor<2> &GetInputGradients2D() override;

    const Tensor<3> &GetInputGradients3D() override;

    const Tensor<4> &GetInputGradients4D() override;

    int GetInputRank() const override;

    int GetOutputRank() const override;

protected:
    Tensor<TensorRank> X;
    Tensor<TensorRank> Z;
    Tensor<TensorRank> dL_dZ;
    Tensor<TensorRank> dL_dX;

    // multithreading
    Eigen::ThreadPool pool = Eigen::ThreadPool(
            (int) std::thread::hardware_concurrency());
    Eigen::ThreadPoolDevice device = Eigen::ThreadPoolDevice(&pool, 2);
};

} // namespace orion

#include "activation.ipp"

#endif //ORION_ACTIVATION_H
