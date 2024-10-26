# **************
# EL LOBO ACECHA
# **************


def run(farm: list) -> str:

    final_index = len(farm) - 1
    if farm.index("lobo") == final_index:
            msg = 'No te quiero ver más por aquí, lobo' 
    else:
        reverse_farm = farm[::-1]
        cheep_index = reverse_farm.index("lobo")
        msg = f'Cuidado oveja {cheep_index}, el lobo te va a comer'


    return msg


if __name__ == '__main__':
    run(['oveja', 'oveja', 'lobo', 'oveja'])