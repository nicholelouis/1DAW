# ****************
# CONTEO REGRESIVO
# ****************


def run(n: int) -> list:
    
    nums = []
    for num in range(1, n +1):
        nums.append(num)
    rev_nums = nums[::-1]

    return rev_nums


if __name__ == '__main__':
    run(5)