# ********************
# LA PALABRA MÁS LARGA
# ********************
from pathlib import Path


def run(input_path: Path) -> str:
    BLACK_LIST = ',.;:()'
    longest_word = ''
    with open(input_path) as f:
        for line in f:
            for word in line.split():
                clean_word = word.strip(BLACK_LIST)
                if len(clean_word) >= len(longest_word):
                    longest_word = clean_word

    return longest_word


if __name__ == '__main__':
    run('data/longest_word/python.txt')