/**
 * @file
 * @brief Core utils for mathematics
 * @authors svpogozhev
 */
#include <cmath>

namespace math {

	double square(double num) {
		return num * num;
	}

	double fast_power(double base, unsigned long long exp) {
		double v = 1.0;
		while(exp!=0) {
			if ( exp & 1ULL ) {
				v *= base;
			}
			base *= base;
			exp >>= 1;
		}
		return v;
	}

}
