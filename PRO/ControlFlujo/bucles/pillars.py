# **********************
# POSTES EN LA CARRETERA
# **********************


def run(num_pillars: int, gap_pillars: float, pillar_width: float) -> float:
    gap_fixed = gap_pillars * 100
    inter_distance = ((num_pillars - 2) * pillar_width) + ((num_pillars - 1) * gap_fixed)

    return inter_distance


if __name__ == '__main__':
    run(10, 5, 30)