# *******************
# TEMPERATURAS MEDIAS
# *******************
import filecmp
from pathlib import Path


def run(input_path: Path) -> bool:
    output_path = 'data/avg_temps/avg_temps.dat'
    f = open(input_path)
    z = open(output_path, 'w')
    total = 0
    for line in f:
        nums = line.split(",")
        for num in nums:
            total += int(num)
        avg = total/31
        z.write(f'{avg:.2f}\n')
        total = 0
    z.close()

    return filecmp.cmp(output_path, 'data/avg_temps/.expected', shallow=False)


if __name__ == '__main__':
    run('data/avg_temps/temperatures.dat')