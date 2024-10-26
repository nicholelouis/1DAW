text = "Hola nikki como esta?"
other = "sebas"
y = text.find("nikki")-1
x = text[:y:]
r = text.find("nikki") + len("nikki")
z = text[r:]
print(x + " " + other + " " + z)