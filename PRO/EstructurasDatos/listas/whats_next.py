# *********************
# ¿QUÉ ES LO SIGUIENTE?
# *********************


def run(items: list, ref_item: object) -> object:
    if ref_item not in items:
        target_item = None
    else:
        long = len(items) - 1
        item_index = items.index(ref_item)
        if item_index < long:
            target_item = items[item_index +1]
        else:
            target_item = None

    return target_item


if __name__ == '__main__':
    run([1, 2, 3, 4, 5, 6, 7], 3)