# ****************
# NOMBRE VICEVERSA
# ****************


def run(fullname: str) -> str:
    index_split = fullname.find(" ")
    name = fullname[:index_split]
    surnames = fullname[1 + index_split:]
    swapname = f"{surnames} {name}"

    return swapname


if __name__ == '__main__':
    run('John McClane')