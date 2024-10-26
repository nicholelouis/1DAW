# ****************
# YELLOW SUBMARINE
# ****************
from pathlib import Path


def run(route_path: Path) -> tuple:
    f = open(route_path)
    fuel = int((f.readline()).strip())
    distance = depth = 0
    for line in f:
        for x in line.split(","):
            coor = x.split(":")
            distance += (int(coor[0]))
            depth += (int(coor[1]))
            fuel -= abs(3 * distance + 2 * depth)
            if fuel <= 0:
                fuel = 0
                break
            if depth <= 0:
                break
            if depth >= 600:
                break



    return distance, depth, fuel


if __name__ == '__main__':
    run('data/submarine/route1.dat')