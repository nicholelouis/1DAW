def reverse(text) -> str:
    return text[::-1]

def get_cual_number(number, /, HUNDRED_CHAR = '.') -> str:
    UNITS = 3
    qual_number = ''
    number_text = reverse(str(number))
    counter = UNITS
    for unit, n in enumerate(number_text):
        if unit == counter:
            qual_number += HUNDRED_CHAR
            qual_number += n
            counter += UNITS
        else:
            qual_number += n
    return reverse(qual_number)

print(get_cual_number(12736492834207623549))
