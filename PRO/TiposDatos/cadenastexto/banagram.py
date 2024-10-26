# *********
# BANAGRAMA
# *********


def run(word1: str, word2: str) -> bool:
    if len(word1) > len(word2):
        target_len = word1.lower()
        another = word2.lower()
    else:
        target_len = word2.lower()
        another = word1.lower()

    for char in another:
        if char in target_len:
            is_banagram = True
        else:
            is_banagram = False
            break

    return is_banagram


if __name__ == '__main__':
    run('gabana', 'banagrama')