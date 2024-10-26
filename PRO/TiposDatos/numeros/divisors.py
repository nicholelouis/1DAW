# ******************
# CONTANDO DIVISORES
# ******************


def run(number: int) -> int:
    acc = 0
    for i in range(1, number + 1):
        if number % i == 0:
            acc += 1
    num_divisors = acc

    return num_divisors


if __name__ == '__main__':
    run(67)