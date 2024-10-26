num = int(input("Introduce un numero: "))
for i in range (2, num // 2):
    if num % i != 0:
        output = "Es primo"
    else: 
        output = "Es compuesto"
print(output)

    