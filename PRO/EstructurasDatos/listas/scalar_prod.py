v1 = [4, 3, 8, 1]
v2 = [9, 2, 7, 3]
operations = 0
for num1, num2 in zip(v1, v2):
    operations += num1 * num2
print(operations)