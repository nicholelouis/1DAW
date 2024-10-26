# ****************
# SUMA HETEROGÉNEA
# ****************


def run(items: list) -> int:
    fixed_items = [int(num) for num in items]
    sum_items = sum(fixed_items)

    return sum_items


if __name__ == '__main__':
    run([1, '2', 3, '4', 5])