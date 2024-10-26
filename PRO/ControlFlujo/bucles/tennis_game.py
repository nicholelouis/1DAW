# *****************
# UN JUEGO AL TENIS
# *****************


def run(points: str) -> str:
    points_a = 0
    points_b = 0
    for point in points:
        if point == "A":
            points_a += 1
        elif point == "B":
            points_b += 1
    
    winner = "A" if points_a > points_b else "B"

    return winner


if __name__ == '__main__':
    run('ABAABA')