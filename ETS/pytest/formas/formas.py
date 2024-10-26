class Coche:
    def __init__(self, marca, modelo, anio):
        self.marca = marca
        self.modelo = modelo
        self.anio = anio
        self.velocidad = 0

    def acelerar(self, velocidad):
        self.velocidad += velocidad

class Triangulo:
    def __init__(self, lado1, lado2, lado3):
        self.lado1 = lado1
        self.lado2 = lado2
        self.lado3 = lado3

    def area(self):
        s = (self.lado1 + self.lado2 + self.lado3) / 2
        return (s * (s - self.lado1) * (s - self.lado2) * (s - self.lado3)) ** 0.5

    def tipo(self):
        if self.lado1**2 + self.lado2**2 == self.lado3**2 or self.lado2**2 + self.lado3**2 == self.lado1**2 or self.lado3**2 + self.lado1**2 == self.lado2**2:
            return "Rectángulo"
        else:
            return "Otro"

class Cuadrado:
    def __init__(self, lado):
        self.lado = lado

    def area(self):
        return self.lado * self.lado

    def perimetro(self):
        return 4 * self.lado

    def es_cuadrado(self):
        return True if self.lado else False
