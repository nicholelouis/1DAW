# *******************************
# ASEGURANDO ARGUMENTOS POSITIVOS
# *******************************

def assert_positive(func):
    def wrapper(*args, **kwargs):
        all_args = list(args) + list(kwargs.values())
        for arg in all_args:  
            if isinstance(arg, (int, float)) and arg < 0:
                return 0
        return func(*args, **kwargs)
    return wrapper

@assert_positive
def factorial(n):
    fact = 1
    for i in range(1, n+1):
        fact *= i
    return fact


