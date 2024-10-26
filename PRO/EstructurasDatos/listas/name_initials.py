# **********************
# INICIALES DE UN NOMBRE
# **********************


def run(fullname: str) -> str:
    fullname = fullname.split(",")

    scdn = (fullname[0]).split(" ")
    second_name1 = scdn[0]
    second_name2 = scdn[1]
    sname2 = ""
    for letter in name:
        if letter.istitle:
            name2 += letter
    for letter in secondname:
        if letter.istitle:
            sname2 += letter
    initials = f"{name2}.{sname2}"

    return initials


if __name__ == '__main__':
    run('Delgado Quintero, sergio')