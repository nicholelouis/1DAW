# ********************************
# UNA MÉTRICA PARA CADENA DE TEXTO
# ********************************


def run(text: str) -> int:
    total_caracteres= len(text)
    vowels = text.count("a") + text.count("e") + text.count("i") + text.count("o") + text.count("u")
    metric = total_caracteres * vowels

    return metric


if __name__ == '__main__':
    run('ordenador')