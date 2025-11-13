*** Settings ***
Documentation     Elementos de la página de Login de Book Store.
...               Este archivo contiene los localizadores por id de los campos y botones del formulario
...               para ser reutilizados en las pruebas de automatización de inicio de sesión.

*** Variables ***
# Campo de texto: Nombre de usuario
${TXT_USERNAME}     id=userName


# Campo de texto: Contraseña
${TXT_PASSWORD}     id=password


# Botón de envío del formulario
${BTN_LOGIN}    id=login


# MSG de error
${LBL_ERROR}    xpath=//*[@id="name"]

# Botón de Menu
#${BTN_MENU}     id=menu-toggle

# Botón de Logout
${BTN_LOGOUT}    id=submit
#${BTN_LOGOUT}    role=button[name="Log out"]