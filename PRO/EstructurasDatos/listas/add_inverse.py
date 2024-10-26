# **************
# SUMA INVERTIDA
# **************


def run(numbers: list) -> int:
    add = sum(numbers)
    if add > 0:
        add_inv = add * -1
    else:
        add_inv = abs(add)

    return add_inv


if __name__ == '__main__':
    run([1, 2, 3, 4, 5])