# ***************
# UN SET AL TENIS
# ***************


def run(points: str) -> tuple:
    points_a = 0
    points_b = 0
    partida_a = 0
    partida_b = 0
    while True: #points_a == 6 and points_b <= 4 or points_b == 6 and points_a <= 4:
        for point in points:
            if point == "A":
                points_a += 1
            elif point == "B":
                points_b += 1
        if points_a == 6:
            partida_a += 1
        elif points_b == 6:
            partida_b += 1
    
    games_player1 = points_a 
    games_player2 = points_b 

    return games_player1, games_player2


if __name__ == '__main__':
    run('AABBAABABBBABABABBBAAABBBABAABBABBAABBBABABBAAAABBBBABBBAB')