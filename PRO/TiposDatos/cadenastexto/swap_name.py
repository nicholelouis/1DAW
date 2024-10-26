# ****************
# NOMBRE VICEVERSA
# ****************


def run(fullname: str) -> str:
    index_split = fullname.find(" ",1)
    name = fullname[:index_split]
    surnames = fullname[1 + index_split:]
    swapname = surnames + " " + name

    return swapname


if __name__ == '__main__':
    run('John McClane')