# *****************
# FICHO CUANDO TOCA
# *****************


def run(time: str, offset: int) -> str:
    hours_offset = offset // 60
    min_offset = offset % 60 
    time = time.split(":")
    total_hours = hours_offset + int(time[0])
    total_min = min_offset + int(time[1])
    if total_min > 60:
        total_hours += total_min // 60
        total_min -= 60
    if total_hours > 24:
        total_hours -= 24

    final_time = f"{total_hours}:{total_min}"

    return final_time


if __name__ == '__main__':
    run('17:15', 240)