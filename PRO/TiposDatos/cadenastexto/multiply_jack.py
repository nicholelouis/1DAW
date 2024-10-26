# *************************
# LA MULTIPLICACIÓN DE JACK
# *************************


def run(n: int) -> int:
    text = (str(n)).strip("-")
    number_digits = len(text)
    result = n * 5 ** number_digits

    return result


if __name__ == '__main__':
    run(3)