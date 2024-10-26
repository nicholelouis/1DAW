# ****************
# EL CUADRADO ROJO
# ****************


def run(arc_A: float) -> float:
    PI = 3.14
    perimetro = 4 * arc_A
    radius = perimetro / (2 * PI)
    area = radius * radius

    return round(area, 10)


if __name__ == '__main__':
    run(1)