#ifndef LIBNOSTD_CS_CORE_HPP
#define LIBNOSTD_CS_CORE_HPP
#include <string>

/**
 * @brief      Basic Computer science utils
 */
namespace cs {

	/**
	 * @brief      convert decimal to hexadecimal
	 *
	 * @param[in]  decimal  The decimal
	 *
	 * @return     hexadecimal number string
	 */
	std::string dec2hex(unsigned int decimal);

	/**
	 * @brief      convert hexadecimal to decimal
	 *
	 * @param      hexadecimal  The hexadecimal
	 *
	 * @return     decimal integer
	 */
	unsigned int hex2dec(const std::string & hexademal);

}

#endif

