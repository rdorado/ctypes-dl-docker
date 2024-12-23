import ctypes

if __name__ == "__main__":

    libname = "/app/bin/liblibrary.so"
    c_lib = ctypes.CDLL(libname)
    
    x = 6
    y = 2
    answer = c_lib.cmult(x, y)
    print(f"    In Python: int: {x} float {y} return val {answer}")
    
    
    