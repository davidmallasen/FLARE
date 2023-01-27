//
// Created by macross on 8/18/22.
//

#ifndef ORION_LOSS_FUNCTION_HPP
#define ORION_LOSS_FUNCTION_HPP

#include <vector>

#include "orion/orion_types.hpp"
#include "orion/orion_assert.hpp"

namespace orion
{

/*
 * The loss function classes can contain up to 4 hard coded functions for tensor
 * returns (2D, 3D, 4D, 5D)
 * Currently unable to find a better way to implement this given the layer
 * base class and virtual functions
 */
template<int TensorRank>
class LossFunction
{
public:
    LossFunction() = default;


    explicit LossFunction(Scalar epsilon) : epsilon(epsilon)
    {

    }


    virtual Scalar Loss(const Tensor<TensorRank> &predict,
                        const Tensor<TensorRank> &label) = 0;


    virtual Tensor<TensorRank> Gradient(const Tensor<TensorRank> &predict,
                                        const Tensor<TensorRank> &label) = 0;


    LossFunction<TensorRank> &operator()(const Tensor<TensorRank> &predict,
                                         const Tensor<TensorRank> &label)
    {
        this->loss = this->Loss(predict, label);
        this->gradients = this->Gradient(predict, label);
        return *this;
    }


    void operator+(LossFunction<TensorRank> &other)
    {
        this->loss += other.loss;
        this->gradients += other.gradients;
    }


    Scalar &GetLoss()
    {
        return this->loss;
    }


    Tensor<TensorRank> &GetGradients()
    {
        return this->gradients;
    }


protected:
    Scalar epsilon = 1e-07; // numeric stability constant
    Scalar clip_min = epsilon;
    Scalar clip_max = 1 - epsilon;

    Scalar loss;
    Tensor<2> gradient2D;
    Tensor<3> gradient3D;
    Tensor<4> gradient4D;
    Tensor<TensorRank> gradients;
};

}

#endif //ORION_LOSS_FUNCTION_HPP
