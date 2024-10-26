# ********************
# CUALIFICANDO NÚMEROS
# ********************

def reverse(text) -> str:
        return text[::-1]

def get_qual_number(number, /, HUNDRED_CHAR = ',') -> str:
    UNITS = 3
    qnumber = ''
    number_text = reverse(str(number))
    counter = UNITS
    for unit, n in enumerate(number_text):
            if unit == counter:
                qnumber += HUNDRED_CHAR
                qnumber += n
                counter += UNITS
            else:
                qnumber += n

    return reverse(qnumber)

def run(number: int) -> str:
    
    return get_qual_number(number)


if __name__ == '__main__':
    run(1)