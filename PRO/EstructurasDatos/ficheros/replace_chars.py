# ***********************
# REEMPLAZO DE CARACTERES
# ***********************
import filecmp
from pathlib import Path


def run(input_path: Path, replacements: str) -> bool:
    output_path = 'data/replace_chars/r_noticia.txt'

    #'áa|ée|íi|óo|úu'
    l = replacements.split("|")
    d = dict(l)
    with open(input_path) as f:
        with open(output_path, 'w') as result:
            for line in f:
                for word in line:
                    for letter in word:
                        if letter in d:
                            result.write(word.replace(letter, d.get(letter)))
                        else:
                            result.write(word)
                    
    return filecmp.cmp(output_path, 'data/replace_chars/.expected', shallow=False)


if __name__ == '__main__':
    run('data/replace_chars/noticia.txt', 'áa|ée|íi|óo|úu')