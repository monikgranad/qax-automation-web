*** Settings ***
Documentation     Elementos de la página de Login de CURA Healthcare Service.
...               Este archivo contiene los localizadores por id de los campos y botones del formulario
...               para ser reutilizados en las pruebas de automatización de inicio de sesión.

*** Variables ***
# Campo de texto: Nombre de usuario
${TXT_USERNAME}     id=txt-username


# Campo de texto: Contraseña
${TXT_PASSWORD}     id=txt-password


# Botón de envío del formulario
${BTN_LOGIN}    id=btn-login


# MSG de error
${LBL_ERROR}    path=//*[@id="login"]/div/div/div[1]/p[2]

# Botón de Menu
${BTN_MENU}     id=menu-toggle

# Botón de Logout
${BTN_LOGOUT}    role=link[name="Logout"]