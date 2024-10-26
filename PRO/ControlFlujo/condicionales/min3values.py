numbers = input("introduzca tres numeros: ").split(",")
num1 = int(numbers[0])
num2 = int(numbers[1])
num3 = int(numbers[2])

if num1 < num2 and num1 < num3:
    minimun = num1
elif num2 < num1 and num2 < num3:
    minimun = num2
else:
    minimun = num3
    
print(minimun)