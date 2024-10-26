TARGET_NUMBER = 22
attempts = 0
while True:
    num = int(input("Introduzca un número: "))
    attempts += 1
    if num < TARGET_NUMBER:
        print("Mayor")
    elif num > TARGET_NUMBER:
        print("Menor")
    else:
        break
print(f"✅ ¡Enhorabuena! Has encontrado el número en {attempts} intentos")
