ITALY_ORD = 0x1F1EE
VENEZUELA_ORD = 0x1F1FB
SPAIN_ORD = 0x1F1EA

country = input("Introduce el nombre de un país: ")
match country:
    case "italia":
        character = chr(ITALY_ORD)
    case "venezuela":
        character = chr(VENEZUELA_ORD)
    case "españa":
        character = chr(SPAIN_ORD)
    case _:
        character = "invalido"

print(character)