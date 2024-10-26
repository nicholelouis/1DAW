# *************************
# BUSCANDO PALABRAS COMUNES
# *************************
import filecmp
from pathlib import Path


def run(input_path: Path) -> bool:
    f = open(input_path)
    path = [item.lower() for item in f.readlines()]
    
    output_path = 'data/common_words/output.txt'
    with open(output_path, 'w') as f2:
        for line1 in path:
            for line2 in path:
                dif = len(set(line1.strip().split()) & set(line2.strip().split()))
                f2.write(f'{dif} \n')

    return filecmp.cmp(output_path, 'data/common_words/.expected', shallow=False)


if __name__ == '__main__':
    run('data/common_words/minizen.txt')