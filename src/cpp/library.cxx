#include <iostream>

extern "C" // required when using C++ compiler
int cmult(int int_param, int float_param) {
    int return_value = int_param * float_param;
    return return_value;
}
