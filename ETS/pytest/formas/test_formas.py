import pytest
from formas import Coche, Triangulo, Cuadrado

"coche"
def test_coche_init():
    coche = Coche("Volkswagen", "Polo", 2019)
    assert coche.marca == "Ford"
    assert coche.modelo == "Focus"
    assert coche.anio == 2019

def test_coche_velocidad_inicial():
    coche = Coche("Jeep", "Rubicon", 2020)
    assert coche.velocidad == 0

def test_coche_acelerar():
    coche = Coche("Mercedes", "AMG GT", 2018)
    coche.acelerar(50)
    assert coche.velocidad == 50


"Triangulo"
def test_triangulo_area():
    triangulo = Triangulo(3, 4, 5)
    assert triangulo.area() == 6.0

def test_triangulo_tipo():
    triangulo = Triangulo(3, 4, 5)
    assert triangulo.tipo() == "Rectángulo"


"Cuadrado"
def test_cuadrado_area():
    cuadrado = Cuadrado(4)
    assert cuadrado.area() == 16

def test_cuadrado_perimetro():
    cuadrado = Cuadrado(4)
    assert cuadrado.perimetro() == 16

def test_cuadrado_es_cuadrado():
    cuadrado = Cuadrado(4)
    assert cuadrado.es_cuadrado() == True

