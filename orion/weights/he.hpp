//
// Created by RKuang on 9/24/2022.
//

#ifndef ORION_HE_HPP
#define ORION_HE_HPP

#include "weights.hpp"

namespace orion
{

class HeUniform : public Initializer
{
public:
    /**
     * He uniform initialization, creates a tensor on a uniform distribution
     * in range +- sqrt(6 / fan_in)
     *
     * @param dims      tensor dimensions e.g. Tensor<2>::Dimensions(2, 4)
     * @param fan_in    number of layer input units
     * @param fan_out   number of layer output units
     * @return Tensor<2>
     */
    Tensor<2> Initialize(Tensor<2>::Dimensions dims,
                         int fan_in, int fan_out) const override
    {
        Scalar limit = std::sqrt(6.0 / fan_in);
        return RandomUniform<2>(dims, -limit, limit);
    }


    /**
     * Rank 3 equivalent
     */
    Tensor<3> Initialize(Tensor<3>::Dimensions dims,
                         int fan_in, int fan_out) const override
    {
        Scalar limit = std::sqrt(6.0 / fan_in);
        return RandomUniform<3>(dims, -limit, limit);
    }
};


class HeNormal : public Initializer
{
public:
    /**
     * He normal initialization, creates a tensor on a real distribution
     * with mean 0 and standard deviation sqrt(2 / fan_in)
     *
     * @param dims      tensor dimensions e.g. Tensor<2>::Dimensions(2, 4)
     * @param fan_in    number of layer input units
     * @param fan_out   number of layer output units
     * @return Tensor<3>
     */
    Tensor<2> Initialize(Tensor<2>::Dimensions dims,
                         int fan_in, int fan_out) const override
    {
        Scalar stddev = std::sqrt(2.0 / fan_in);
        return RandomNormal<2>(dims, 0.0, stddev);
    }


    /**
     * Rank 3 equivalent
     */
    Tensor<3> Initialize(Tensor<3>::Dimensions dims,
                         int fan_in, int fan_out) const override
    {
        Scalar stddev = std::sqrt(2.0 / fan_in);
        return RandomNormal<3>(dims, 0.0, stddev);
    }
};

}

#endif //ORION_HE_HPP
