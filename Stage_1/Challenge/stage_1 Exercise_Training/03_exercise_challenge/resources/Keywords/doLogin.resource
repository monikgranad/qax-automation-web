*** Settings ***
Documentation   Acciones para realizar login
Resource        setup.resource
Resource    ../pagesObject/homePage.resource
Resource    ../pagesObject/loginPage.resource


*** Variables ***
${USERNAME}     John Doe
${PASSWORD}     ThisIsNotAPassword


*** Keywords ***
Ingresar al login
    [Documentation]  Ingresar al login
    Click    ${BTN_MAKE_APPOINTMENT}
    #Wait For Elements State   ${TXT_USERNAME}      visible    timeout=10s

Iniciar sesión con credenciales válidas
    [Documentation]    Ingresa el usuario y la contraseña en el formulario de login y envía los datos.
    Fill Text          ${TXT_USERNAME}      ${USERNAME}
    Fill Text          ${TXT_PASSWORD}      ${PASSWORD}
    Click              ${BTN_LOGIN}


Validar acceso
    [Documentation]    Verifica que el usuario haya accedido al panel del visitante y muestre mensaje de error.

    #Valida que el elemento: h2-Make Appointment sea visible
    ${visible}=    Run Keyword And Return Status    Wait For Elements State     xpath=//*[@id="appointment"]/div/div/div/h2   visible     timeout=5s
    Sleep    3

    IF    ${visible}==True
        Wait For Elements State   ${BTN_BOOK}       visible    timeout=5s

        #Cierre de sesión del usuario
        Click     ${BTN_MENU}
        Sleep     1
        Click     ${BTN_LOGOUT}

        #Muestra en qué carpeta se está ejecutando el test
        Log To Console     cur d - ${CURDIR}
        #Muestra el directorio de ejecución
        Log To Console     exe d - ${EXECDIR}

    ELSE
        #Obtiene el texto del error y lo compara
        ${LBL_ERROR}=    Get Text     xpath=//*[@id="login"]/div/div/div[1]/p[2]
        Should Contain    ${LBL_ERROR}    Login failed! Please ensure the username and password are valid
        Log     ${LBL_ERROR}
    END



