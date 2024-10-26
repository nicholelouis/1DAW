# **************
# SUMA RECORTADA
# **************


def run(values: list) -> int:
    if values == []:
        tsum = 0
    else:
        excluided = [min(values), max(values)]
        unique_nums = []
        for value in values:
            if value not in unique_nums and value not in excluided:
                unique_nums.append(value)
        tsum = sum(unique_nums)

    return tsum


if __name__ == '__main__':
    run([6, 2, 1, 8, 10])