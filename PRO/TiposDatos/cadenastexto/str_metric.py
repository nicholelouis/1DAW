# ********************************
# UNA MÉTRICA PARA CADENA DE TEXTO
# ********************************


def run(text: str) -> int:
    
    length = int(len(text))
    vocals = int(text.count("a")) + int(text.count("e")) + int(text.count("o"))
    
    metric = length * vocals

    return metric


if __name__ == '__main__':
    run('ordenador')