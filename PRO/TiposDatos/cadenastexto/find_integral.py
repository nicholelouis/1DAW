# *********************
# ENCUENTRA LA INTEGRAL
# *********************


def run(symbol: str) -> str:
    ecuation_index = symbol.find(",")
    coef1 = int(symbol[:ecuation_index])
    exponet = int(symbol[1 + ecuation_index:]) +1
    coef2 = coef1 // exponet
    integral = str(coef2) + "x" + "^" + str(exponet)

    return integral


if __name__ == '__main__':
    run('3,2')