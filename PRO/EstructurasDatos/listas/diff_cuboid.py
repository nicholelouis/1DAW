# ********************
# CUBOIDES Y VOLÚMENES
# ********************


def run(cuboid1: list, cuboid2: list) -> float:
    vol1 = 1
    vol2 = 1
    for num in cuboid1:
        vol1 *= num
    for num in cuboid2:
        vol2 *= num

    vol_diff = abs(vol1 - vol2)

    return vol_diff


if __name__ == '__main__':
    run([2, 2, 3], [5, 4, 1])