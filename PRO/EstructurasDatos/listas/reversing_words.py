# *************************
# PALABRAS EN ORDEN INVERSO
# *************************


def run(text: str) -> str:
    lower = text.lower()
    text = lower.split(" ")
    rever = text[::-1]
    reversing = " ".join(rever)

    return reversing


if __name__ == '__main__':
    run('Hello World')