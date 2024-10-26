# ***********************
# SUBCONJUNTOS EN CASCADA
# ***********************


def run(values: list, size: int) -> list:

    cascading = []
    x = []
    while len(cascading[0]) == size:
        for value in values:
            x.append(value)



    return cascading


if __name__ == '__main__':
    run([1, 2, 3, 4], 3)