# ***********************
# PARTICIÓN POR EL NÚMERO
# ***********************


def run(values: list, ref_value: int) -> list:
    n1 = []
    n2 = []
    for value in values:
        if value < ref_value:
            n1.append(value)
        else:
            n2.append(value)

    npartition = [n1, n2]

    return npartition


if __name__ == '__main__':
    run([4, 3, 2, 9, 8, 5], 4)