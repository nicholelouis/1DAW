ALPHABET = "abcdefghijkmnlopqrstuvwyz"
text = input ("Something: ").lower()

for letters in text:
    if letters not in ALPHABET:
        x= "no"
        break
    else: 
        x = "ok"
print(x)        