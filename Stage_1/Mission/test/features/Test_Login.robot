*** Settings ***
Documentation
Library     Browser
Resource    ../../resources/keywords/setup.resource

Suite Setup    Abrir navegador y acceder al sitio

*** Test Cases ***
Inicio de sesión exitoso con credenciales válidas
    [Documentation]    Este caso valida el flujo correcto de inicio de sesión en Book Store.
    ...                Se completan los campos de correo y contraseña, se envía el formulario
    ...                y se valida que el usuario acceda al panel principal del visitante.
    Given Ingresar al login
    When Iniciar sesión con credenciales válidas
    Then Validar acceso