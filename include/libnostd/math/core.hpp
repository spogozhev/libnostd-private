/**
 * @file
 * @brief Core utils for mathematics
 * @authors svpogozhev
 */
#ifndef LIBNOSTD_MATH_CORE_HPP
#define LIBNOSTD_MATH_CORE_HPP

/**
 * @brief      Basic mathematics utils
 */
namespace math {

    /**
     * @brief      Gets the square.
     *
     * @details    (num * num)
     *
     * @param[in]  num   The number
     *
     * @return     The square.
     */
	double square(double num);

    /**
     * @brief      Algorithm: Binary exponentiation
     * @details    Error: none, but it is worth noting that the multiplication
     *             operation is not associative for floating point numbers, i.e.
     *             1.21 * 1.21 is not the same as 1.1 * 1.1 * 1.1 * 1.1,
     *             however, when compared with standard functions, errors do not
     *             arise, as mentioned earlier. 
     *             Restrictions: the degree must be an integer not less than 0.
     *
     * @param[in]  base      base
     * @param[in]  exponent  exponent
     *
     * @return     raised value
     */
	double fast_power(double base, unsigned long long exp);

}

#endif

