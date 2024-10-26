n = int(input("Introduce un numero: "))
size = n * n
num = 1
for i in range (n):
    for j in range (n):
        if i == j or i + j == n -1:
            print(size -num +1, end=" ")
        else: 
            print(num, end=" ")
        num += 1
    print()