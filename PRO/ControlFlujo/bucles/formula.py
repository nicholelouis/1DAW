b = -6
a = 1
acc = 0
for x in range(-9,9):
    c = x
    calc = (-b - ( b**2 -4 * a * c)**0.5)//(2 * a)
    if calc < acc:
        acc = calc
print(acc)
