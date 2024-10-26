# *************************
# NO ME INTERESAN LOS PARES
# *************************


def run(items: list) -> list:
    filter = [items[index] for index in range(len(items)) if index % 2 == 0]

    return filter


if __name__ == '__main__':
    run([1, 2, 1, 2, 1, 2])