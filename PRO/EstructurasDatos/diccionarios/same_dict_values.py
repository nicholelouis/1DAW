# ******************************
# VALORES IGUALES EN DICCIONARIO
# ******************************


def run(items: dict) -> bool:
    if len(items) < 1:
        all_same = True
    else:
        all_same = True
        target_value = list(items.values())[0]
        for v in items.values():
            if v != target_value:
                all_same = False
                break

    return all_same


if __name__ == '__main__':
    run({'a': 1, 'b': 1, 'c': 1, 'd': 1})