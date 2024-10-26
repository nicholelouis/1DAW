# *****************
# NÚMEROS PERFECTOS
# *****************

def get_divisors(n: int) -> list[int]:
    dividers = [num for num in range(1, n) if n % num == 0]
    return dividers

def is_perfect(n: int) -> bool:
    perfect_n = False
    sum_dividers = sum(get_divisors(n))
    if sum_dividers == n:
        perfect_n = True
    return perfect_n

