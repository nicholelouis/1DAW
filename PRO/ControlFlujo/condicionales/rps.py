person1 = input("piedra, papel o tijera? ")
person2 = input("piedra, papel o tijera? ")

if person1 == "piedra" and person2 ==  "tijera" or person1=="tijera" and person2 == "piedra":
    print("La piedra aplasta tijera")
elif person1 == "piedra" and person2 == "papel" or person1 == "papel" and person2== "piedra":
    print("El papel envuelve a piedra")
elif person1 == "tijera" and person2 == "papel" or person1 == "papel" and person2 == "tijera":
    print("La tijera corta papel")
else:
    print("caracter invalido")