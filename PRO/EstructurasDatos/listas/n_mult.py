# ********************
# CALCULANDO MÚLTIPLOS
# ********************


def run(x: int, n: int) -> list:
    
    multiples = [num for num in range(x, n * x + 1) if num % x == 0]

    return multiples


if __name__ == '__main__':
    run(1, 10)