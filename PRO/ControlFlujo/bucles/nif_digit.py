# *************************
# DÍGITO DE CONTROL DEL NIF
# *************************


def run(nif: str) -> str:
    DIGIT_TABLE = "TRWAGMYFPDXBNJZSQVHLCKE"

    calc_digit = int(nif) % 23
    wnif = nif + DIGIT_TABLE[calc_digit]

    return wnif


if __name__ == '__main__':
    run('78654355')