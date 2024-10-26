# *********************
# PALABRAS CON LONGITUD
# *********************


def run(text: str) -> list:
    
    words_length = []
    text = text.split(" ")
    for char in text:
        new_char = f"{char} {len(char)}"
        words_length.append(new_char)

    return words_length


if __name__ == '__main__':
    run('todo se transforma')