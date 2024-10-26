# ******************
# CALCULADORA LÓGICA
# ******************


def run(values: list, oper: str) -> bool:
    
    result = True
    for value in values:
        match oper:
            case "and":
                result = result and value
            case "or":
                result = result or value

    return result


if __name__ == '__main__':
    run([True, True, False], 'and')