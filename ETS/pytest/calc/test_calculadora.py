import pytest
from calculadora import Calculadora

@pytest.fixture
def calculadora():
    return Calculadora()

def test_sumar(calculadora):
    assert calculadora.sumar(3, 5) == 8

def test_restar(calculadora):
    assert calculadora.restar(8, 3) == 5

def test_multiplicar(calculadora):
    assert calculadora.multiplicar(2, 4) == 8

def test_dividir(calculadora):
    assert calculadora.dividir(8, 2) == 4

def test_dividir_por_cero(calculadora):
    with pytest.raises(ValueError):
        calculadora.dividir(8, 0)
