# *****************************
# SUMA DE LA DIAGONAL PRINCIPAL
# *****************************


def run(matrix: list) -> int:
    sum_diagonal = 0
    matrix_length = len(matrix)
    if matrix_length != len(matrix[0]):
        sum_diagonal = None
    else:
        for row in range(matrix_length):
            for colum in range(matrix_length):
                if row == colum:
                    sum_diagonal += matrix[row][colum]
        
            


    return sum_diagonal


if __name__ == '__main__':
    run([[4, 6, 1], [2, 9, 3], [1, 7, 7]])