# *****************************
# SOMOS IGUALES, PERO DISTINTOS
# *****************************


def run(items: list) -> bool:
    target_char = items[0]
    for item in items:
        if item != target_char:
            all_same = False
        else:
            all_same = True

    return all_same


if __name__ == '__main__':
    run([1, 1, 1, 1, 1, 1])