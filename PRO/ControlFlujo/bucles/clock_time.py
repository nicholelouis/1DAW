# *********************
# CONTANDO MILISEGUNDOS
# *********************


def run(hours: int, minutes: int, seconds: int) -> float:
    h_to_mls = hours * 3600000 
    min_to_mls = minutes * 60000
    sec_to_mls = seconds * 1000
    time_since_midnight = h_to_mls + min_to_mls + sec_to_mls

    return time_since_midnight


if __name__ == '__main__':
    run(0, 1, 1)