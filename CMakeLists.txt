cmake_minimum_required(VERSION 3.14)

project(
	libnostd
	VERSION 0.0.1
	DESCRIPTION "A Powerful C++ Library for Hight-Performance Computing"
	LANGUAGES CXX
)

include_directories(include)

set(CMAKE_CXX_STANDART 20)

add_subdirectory(examples)

# add_subdirectory(tests)
