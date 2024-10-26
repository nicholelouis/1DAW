class Calculadora:
    def sumar(self, x, y):
        return x + y

    def restar(self, x, y):
        return x - y

    def multiplicar(self, x, y):
        return x * y

    def dividir(self, x, y):
        if y == 0:
            raise ValueError("No se puede dividir por cero")
        return x / y
