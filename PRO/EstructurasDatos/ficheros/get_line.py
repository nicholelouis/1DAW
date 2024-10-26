# *****************
# HAN CANTADO LÍNEA
# *****************
from pathlib import Path


def run(input_path: Path, line_no: int) -> str:
    
    line = None
    acc = 0
    with open(input_path) as f:
        for l in f:
            acc += 1
            if acc == line_no:
                line = l.strip()
                break



    return line


if __name__ == '__main__':
    run('data/get_line/nasdaq.txt', 20)