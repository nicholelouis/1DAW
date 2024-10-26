# *************************
# LA MULTIPLICACIÓN DE JACK
# *************************


def run(n: int) -> int:

    digits_n = len(str(n).strip("-"))
    result = n * 5 ** digits_n

    return result


if __name__ == '__main__':
    run(3)