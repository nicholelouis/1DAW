# ****************
# TROCEADO EXTREMO
# ****************


def run(numbers: str) -> str:
    numb = numbers.split(",")
    strip_numb = []
    for num in numb:
            if numb.index(num) != 0 and numb.index(num) != len(numb) -1:
                strip_numb.append(num)
    strip_numbers = " ".join(strip_numb)

    return strip_numbers


if __name__ == '__main__':
    run('1,2,3')