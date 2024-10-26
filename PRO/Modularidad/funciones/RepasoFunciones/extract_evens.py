# *******************
# EXTRACCIÓN DE PARES
# *******************


def run(l):
    nums_l = l.copy()
    return [num for num in nums_l if num % 2 == 0]

