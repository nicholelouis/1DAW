# *******************
# FIBONACCI GENERADOR
# *******************

def fibonacci_generator(n: int):
    a = 0
    b = 1
    for _ in range (n):
        yield a
        a, b = b,  a + b

def run(n: int) -> list[int]:
    result = [num for num in fibonacci_generator(n)]
    return result
