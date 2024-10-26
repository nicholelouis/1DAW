# ************************
# DÍGITOS EN ORDEN INVERSO
# ************************


def run(number: int) -> list:
    number = list(str(number))
    digits = []
    for num in number:
        digits.append(int(num))

    rev_digits = digits[::-1]

    return rev_digits


if __name__ == '__main__':
    run(35231)