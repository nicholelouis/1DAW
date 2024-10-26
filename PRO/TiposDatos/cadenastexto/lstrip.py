# **********
# LEFT STRIP
# **********


def run(text: str, blacklist: str) -> str:
    stext=""
    for char in text:
        if char not in blacklist:
            stext += char
    #stext = 'output'

    return stext


if __name__ == '__main__':
    run('955428PAYLOAD', '0123456789')