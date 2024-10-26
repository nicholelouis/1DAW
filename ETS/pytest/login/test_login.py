import pytest
from login import verify_credentials

def test_verify_credentials_correct():
    assert verify_credentials("usuario", "contraseña", "usuario", "contraseña") == True

def test_verify_credentials_incorrect_name():
    assert verify_credentials("usuario", "contraseña", "otrousuario", "contraseña") == False

def test_verify_credentials_incorrect_passwd_():
    assert verify_credentials("usuario", "contraseña", "usuario", "otracontraseña") == False

def test_verify_credentials_incorrect_name_y_passwd():
    assert verify_credentials("usuario", "contraseña", "otrousuario", "otracontraseña") == False

