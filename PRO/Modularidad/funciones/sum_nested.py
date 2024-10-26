# ***********************
# SUMANDO CON ANIDAMIENTO
# ***********************


def sum_nested(items: list) -> int:
    if len(items) == 0:
        return 0
    count = 0
    for item in items:
        if isinstance(item, list):
            count += sum_nested(item)
        else:
            count += item
    return count