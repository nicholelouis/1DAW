# *******************************
# CONTANDO VOCALES (EN RECURSIVO)
# *******************************


def count_vowels(text):
    VOWELS = 'aeiou'
    if len(text)==0:
        return 0
    return (text[0] in VOWELS) + count_vowels(text[1:])

