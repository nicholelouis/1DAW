# *******************
# EXTRACCIÓN DE PARES
# *******************


def run(values)->list[int]:
    result = [num for num in values if num % 2 == 0]
    return result

