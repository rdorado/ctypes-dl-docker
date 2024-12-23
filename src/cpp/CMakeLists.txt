# Set the minimum required version of CMake to be 3.10
cmake_minimum_required(VERSION 3.10)
project(DynamicLibrary VERSION 1.0.0.0)

# Set the project of the output of the library will be liblibrary.so
add_library(library SHARED library.cxx)
