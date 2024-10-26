# **********
# PALÍNDROMO
# **********


def is_palindrome(text: str) -> bool:
    text = text.replace(" ", "").lower()
    reverse_text = text[::-1]
    return text == reverse_text