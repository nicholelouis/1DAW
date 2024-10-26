# ***************
# MEZCLA ORDENADA
# ***************


def run(values1: list, values2: list) -> list:
    values = values1 + values2
    if values == []:
        new = []
    else:
        new = [values[0]]
        index = 0
        for num in values:
            if num > values[index] and num not in new:
                    new.insert(index +1, num)
            elif num < values[index] and num not in new:
                    new.insert(index -1, num)
            else:
                 continue
            index += 1
            
    merged = new


    return merged


if __name__ == '__main__':
    run([1, 2, 3, 4], [1, 1, 2, 3, 4, 5])