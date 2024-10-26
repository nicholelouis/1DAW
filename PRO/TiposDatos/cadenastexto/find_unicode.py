# ********************
# ENCUENTRE EL UNICODE
# ********************


def run(source_char: str, offset: int) -> str:
    
    char_code = ord(source_char) + offset
    target_char = chr(char_code)

    return target_char


if __name__ == '__main__':
    run('δ', -2)