# ****************
# SUMANDO MATRICES
# ****************
import filecmp
from pathlib import Path


def run(matrix1_path: Path, matrix2_path: Path) -> bool:
    result_path = 'data/sum_matrix/result.dat'
    matrix1 = []
    matrix2 = []
    with open(matrix1_path) as f1:
        with open(matrix2_path) as f2:
            with open(result_path,'w') as result:
                for line1 in f1:
                    matrix1.append([int(num) for num in line1.split(' ')])
                for line2 in f2:
                    matrix2.append([int(num) for num in line2.split(' ')])
                
                r = [[0] * len(matrix1) for _ in range(len(matrix1))]
                for j in range(len (matrix1)):
                    for x in range(len(matrix1)):
                        r[j][x]=(matrix1[j][x] + matrix2[j][x])
                for z in range(len(matrix1)):
                    result.write(f'{r[z]} \n')



    return filecmp.cmp(result_path, 'data/sum_matrix/.expected', shallow=False)


if __name__ == '__main__':
    run('data/sum_matrix/matrix1.dat', 'data/sum_matrix/matrix2.dat')