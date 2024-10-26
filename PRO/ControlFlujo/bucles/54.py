entrada = 45
multiplo = 0
for i in range(entrada):
    if i % 3 == 0:
        print(i)
        multiplo += i 
    elif multiplo >= entrada:
        break
                      