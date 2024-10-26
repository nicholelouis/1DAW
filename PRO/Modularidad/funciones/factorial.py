# ************************************
# CALCULANDO EL FACTORIAL DE UN NÚMERO
# ************************************


def factorial(n):
    if n < 0:
        result = None
    else:
        result = 1
        for num in range(1, n + 1):
            result *= num
        return result

