def func(x):
    y = x**2
    return y
def calc_rec_area(width, height):
    area = width * height
    return area
def get_f_range(x1, x2, precision):
    result = []
    current = x1
    while current <= x2:
        result.append(current)
        current += precision
    return result
def integral(x1, x2, precision):
    ranges = get_f_range(x1, x2, precision)
    area = 0
    for range in ranges:
        h = func(range)
        area += calc_rec_area(precision, h)
    return area
if __name__ == "__main__":
    x1 = 0
    x2 = 2
    precision = 0.01
    print(integral(x1, x2, precision))
