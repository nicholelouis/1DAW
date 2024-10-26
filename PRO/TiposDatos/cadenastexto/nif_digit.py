# *************************
# DÍGITO DE CONTROL DEL NIF
# *************************


def run(nif: str) -> str:
    
    letter_number = int(nif) % 23
    table = "TRWAGMYFPDXBNJZSQVHLCKE"
    letter = table[letter_number]
    wnif = nif + letter 

    return wnif


if __name__ == '__main__':
    run('78654355')