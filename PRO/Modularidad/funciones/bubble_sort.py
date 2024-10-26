# **********************
# ORDENANDO CON BURBUJAS
# **********************


def bubble(items: list) -> list:
    sorted_items = items[:]
    length_list = len(sorted_items)
    for item in range(length_list):
        for index in range(length_list -item -1):
            if sorted_items[index] > sorted_items[index+1]:
                target_num = sorted_items[index]
                sorted_items[index] = sorted_items[index+1]
                sorted_items[index+1] = target_num
    return sorted_items

