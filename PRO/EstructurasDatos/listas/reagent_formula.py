# ************
# ELLA QUÍMICA
# ************


def run(formula: list) -> bool:
    if 7 in formula or 8 in formula:
        valid = True
        for num in formula:
           
            actual_index = formula.index(num)
            next_index = formula.index(num) + 1
            less_index = formula.index(num) -1
            long = len(formula) - 1

            if num == 1 and actual_index < long:
                if formula[next_index] == 2:
                    valid = False
            if num == 2 and actual_index < long:
                if formula[next_index] == 1:
                    valid = False
            if num == 3 and actual_index < long:
                if formula[next_index] == 4:
                    valid = False
            if num == 4 and actual_index < long:
                if formula[next_index] == 3:
                    valid = False
            if num == 3 and actual_index < long:
                if formula[next_index] == 4:
                    valid = False
            if num == 5 and actual_index < long:
                if formula[next_index] != 6 and formula[less_index] != 6:
                    valid = False
            if num == 6 and actual_index < long:
                if formula[next_index] != 5 and formula[less_index] != 5:
                    valid = False
    else:
        valid = False
    return valid


if __name__ == '__main__':
    run([1, 3, 7])