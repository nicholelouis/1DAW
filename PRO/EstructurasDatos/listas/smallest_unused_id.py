# *****************
# MENOR ID SIN USAR
# *****************


def run(ids: list) -> int:
    maximum = max(ids)
    idm = 0
    for num in range(1 , maximum + 1):
        if num not in ids:
            idm = num
            break
        else:
            idm = maximum + 1
    
    smallest_unused_id = idm

    return smallest_unused_id


if __name__ == '__main__':
    run([3, 1, 8, 4, 9])