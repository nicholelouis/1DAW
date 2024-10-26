# **********
# HISTOGRAMA
# **********
import filecmp
from pathlib import Path


def run(data_path: Path) -> bool:
    histogram_path = 'data/histogram/histogram.txt'
    freq = {}
    with open(data_path) as data:
        with open(histogram_path, "w") as histogram:
            for line in data:
                for letter in line:
                    freq[letter] = freq.get(letter, 0) + 1
            freq = dict(sorted(freq.items()))
            for k, v in freq.items():
                percent = '█' * v 
                histogram.write(f'{k} {percent} {v}\n')


    return filecmp.cmp(histogram_path, 'data/histogram/.expected', shallow=False)


if __name__ == '__main__':
    run('data/histogram/data.txt')