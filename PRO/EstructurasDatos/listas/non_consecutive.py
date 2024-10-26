# *******************
# NO ERES CONSECUTIVO
# *******************


def run(values: list) -> int:
    if values == []:
        target = None
    else:
        target_num = values[0]
        target = None
        for num in values:
            if num != target_num:
                target = num
                break
            else:
                target_num += 1
        
    return target


if __name__ == '__main__':
    run([1, 2, 3, 4, 6, 7, 8])