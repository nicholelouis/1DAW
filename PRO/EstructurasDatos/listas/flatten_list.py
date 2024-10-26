# ***************
# APLANA LA LISTA
# ***************


def run(elements: list) -> list:
    flatten_elements = []
    for element in elements:
        if isinstance(element, list):
            for z in range(0, len(element)-1):
                x = element.pop(z)
                flatten_elements.append(x)
        else:
            flatten_elements.append(element)

    

    return flatten_elements


if __name__ == '__main__':
    run([0, 10, [20, 30], 40, 50, [60, 70, 80], [90, 100, 110, 120]])