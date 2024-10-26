# *******************
# CONTANDO SIN CONTAR
# *******************


def mcount(values: tuple[int], target_num: int = 1) -> int:
    """Calculate the number of times a target number is repeated.
...
...     :param values: Tuple that contains integer numbers.
...     :type values: tuple[int]
...     :param target_num: The number we are going to count, by default it is 1.
...     :type n: int
...     :variable freq: Variable that stores the number of times the target number appears.
...     :type freq: int
...
...     :return: freq
...     :rtype: int
...     """
    freq = 0
    for value in values:
        if target_num == value:
            freq += 1
    return freq

