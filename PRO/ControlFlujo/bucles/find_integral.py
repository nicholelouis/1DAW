# *********************
# ENCUENTRA LA INTEGRAL
# *********************


def run(symbol: str) -> str:
    ecuation_index= symbol.find(",")
    coef1 = int(symbol[:ecuation_index])
    coef2 = int(symbol[1 + ecuation_index:])
    exponet = coef2 + 1
    coef3 = coef1 // exponet
    integral = f"{coef3}x^{exponet}"

    return integral


if __name__ == '__main__':
    run('3,2')