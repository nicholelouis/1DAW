# ****************************************
# ENCONTRANDO EL PRIMER Y EL ÚLTIMO DÍGITO
# ****************************************


def run(text: str) -> tuple:
    last_digit = 0
    for char in text:
        if char.isnumeric():
            first_digit = int(char)
            break
    for char in text:
        if char.isnumeric():
            last_digit = int(char)
    

    return first_digit, last_digit


if __name__ == '__main__':
    run('1abc2')