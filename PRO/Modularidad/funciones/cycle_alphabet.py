# *****************
# ALFABETO CIRCULAR
# *****************

def alphabet(limit: int):
    ALPHABET = 'abcdefghijklmnopqrstuvwxyz'
    for i in range(max):
        yield ALPHABET[i%len(ALPHABET)]

def run(max_letters: int) -> str:
    text = ''.join(alphabet(max_letters))

    return text



if __name__ == '__main__':
    run(0)