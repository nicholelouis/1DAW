# ********************
# MÁXIMO COMÚN DIVISOR
# ********************


def gcd(a: int, b: int) -> int:
    if not b:
        return a
    a, b = b, a % b
    return gcd(a, b)
    

    

