# ***************
# CUADRADO MÁGICO
# ***************

def calculate_magic_sum(square):
    return sum(square[0])

def check_rows(square, magic_sum):
    return all(sum(row) == magic_sum for row in square)

def check_columns(square, magic_sum):
    n = len(square)
    return all(sum(square[i][j] for i in range(n)) == magic_sum for j in range(n))

def check_main_diagonal(square, magic_sum):
    n = len(square)
    return sum(square[i][i] for i in range(n)) == magic_sum

def check_secondary_diagonal(square, magic_sum):
    n = len(square)
    return sum(square[i][n - i - 1] for i in range(n)) == magic_sum

def is_magic_square(square):
    magic_sum = calculate_magic_sum(square)
    return (
        check_rows(square, magic_sum) and
        check_columns(square, magic_sum) and
        check_main_diagonal(square, magic_sum) and
        check_secondary_diagonal(square, magic_sum)
    )

