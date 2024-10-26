def sum_coef (n: int) -> bool:
    if n == 0:
        return 0
    add = 1 / n + sum_coef(n-1)
    return add

print(sum_coef(10))