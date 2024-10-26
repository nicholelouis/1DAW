# *********************************
# ELEMENTOS DUPLICADOS CONSECUTIVOS
# *********************************


def run(items: list) -> list:
    unique_nums = []
    for num in items:
        if num != items[items.index(num)+1]:
            unique_nums.append(num)
    result = unique_nums

    return result


if __name__ == '__main__':
    run([0, 0, 1, 2, 3, 4, 4, 5, 6, 6, 6, 7, 8, 9, 4, 4])