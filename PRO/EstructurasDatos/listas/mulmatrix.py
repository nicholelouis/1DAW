# **********************
# MULTIPLICANDO MATRICES
# **********************


def run(A: list, B: list) -> list:
    if len(A[0]) != len(B):
        p = None
    else:
        l1 = 0
        l2 = 0
        m1 = [[l1], [l2]]
        for j in A[0]:
            for x in range(0, 3):
                l1 += j * B[x][0]
                for z in range (0, 3):
                    l2 += j * B[z][1]

    P = l1

    return P


if __name__ == '__main__':
    run([[1, 2, 3], [4, 5, 6]], [[5, -1], [1, 0], [-2, 3]])