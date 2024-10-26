num1 = 12
num2 = 44
value = 0
for i in range(1, (num1 + num2) // 2):
    if num1 % i == 0 and num2 % i == 0:
        value = i
print(value)
