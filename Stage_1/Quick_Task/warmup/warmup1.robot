*** Settings ***
Library    Browser

*** Test Cases ***
Ejemplo Get By Role
    New Browser    chromium    headless=false
    New Page    https://demo.automationtesting.in/Register.html

    Fill Text    role=textbox[name="Email address"]    usuario@correo.com
    Click        role=button[name="Submit"]
    Click        role=link[name="Login"]