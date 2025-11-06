*** Settings ***
Documentation   Acciones para realizar login
Resource   setup.resource

*** Variables ***
${EMAIL}          visitante.qa@qaxpert.com
${PASSWORD}       QAXpert123!

*** Keywords ***
Ingresar al login
    [Documentation]  Ingresar al login
    Click    ${BTN_LOGIN_HOME}
    Wait For Elements State   ${TXT_USERNAME}      visible    timeout=10s

Iniciar sesión con credenciales válidas
    [Documentation]    Ingresa el correo y la contraseña en el formulario de login y envía los datos.
    Fill Text          ${TXT_USERNAME}      ${EMAIL}
    Fill Text          ${TXT_PASSWORD}   ${PASSWORD}
    Click             ${BTN_LOGIN}


Validar acceso exitoso
    [Documentation]    Verifica que el usuario haya accedido al panel del visitante.
    Wait For Elements State   ${LBL_USER_NAME}      visible    timeout=10s
    Log To Console     cur d - ${CURDIR}
    Log To Console     exe d - ${EXECDIR}