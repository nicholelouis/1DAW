# ********
# PANGRAMA
# ********


def is_pangram(text: str) -> bool:
    ALPHABET_LENGTH = 26
    unique_letters = set(text.replace(" ", "").lower())
    return len(unique_letters) >= ALPHABET_LENGTH

