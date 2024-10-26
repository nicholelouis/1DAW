# ****************
# CONTANDO COMO WC
# ****************
from pathlib import Path


def run(input_path: Path) -> tuple:
    f = open(input_path)
    num_lines = num_words = num_bytes = 0
    for line in f:
        num_lines += 1
        num_words += len(line.strip().split())
        for letter in line:
            num_bytes += len(letter.encode('utf-8'))

    return num_lines, num_words, num_bytes


if __name__ == '__main__':
    run('data/wc/lorem.txt')