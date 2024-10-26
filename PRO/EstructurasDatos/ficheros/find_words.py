# ***********************************
# ¿DÓNDE ESTÁN LAS PALABRAS? MATARILE
# ***********************************
from pathlib import Path


def run(data_path: Path, target_word: str) -> list:
    BLACK_LIST = ".,:;()'¡!-"
    matches = []
    f = open(data_path)
    line_index = 0
    for line in f:
        line_index += 1
        for word in line.strip(BLACK_LIST).lower():
            if word == target_word.lower:
                matches.append((line_index))



    return matches


if __name__ == '__main__':
    run('data/find_words/bzrp.txt', 'persona')