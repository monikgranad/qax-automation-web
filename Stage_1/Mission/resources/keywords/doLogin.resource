*** Settings ***
Documentation   Acciones para realizar login
Resource        setup.resource
Resource    ../pagesObject/homePage.resource
Resource    ../pagesObject/loginPage.resource

Library    Dialogs

*** Variables ***
${USERNAME}     NinjaForTesting_1001
${PASSWORD}     Test@@1234

${USERNAME_VALUE}     id=userName-value

${EXPECTED_TERM}      JavaScript

# Elemento     -> Qué representa
# css          -> Indica que se usará un selector CSS.
#                 (Browser Library también acepta xpath= o id=).
# .rt-tr-group -> Grupo de fila
# .rt-td       -> Celda dentro de la fila
# a            -> Enlace con el título del libro
${LIBROS_LOCATOR}     css=.rt-tr-group .rt-td a



*** Keywords ***
Ingresar al LIBROS_LOCATORlogin
    [Documentation]  Ingresar al login
    Scroll To Element    text=Book Store Application
    Sleep    1
    Click    ${BTN_BOOK_STORE}
    Wait For Elements State   ${BTN_LOGIN}      visible    timeout=10s
    Sleep    5
    Click    ${BTN_LOGIN}
    Wait For Elements State   ${TXT_USERNAME}      visible    timeout=10s

Iniciar sesión con credenciales válidas
    [Documentation]    Ingresa el usuario y la contraseña en el formulario de login y envía los datos.
    Scroll To Element    ${BTN_LOGIN}
    Fill Text     ${TXT_USERNAME}      ${USERNAME}
    Fill Text     ${TXT_PASSWORD}      ${PASSWORD}
    Sleep         3
    Click         ${BTN_LOGIN}


Validar acceso
    [Documentation]    Verifica que el usuario haya accedido al panel del visitante y muestre mensaje de error.

    #Valida que el elemento: userName-value sea visible
    ${visible}=    Run Keyword And Return Status    Wait For Elements State     ${USERNAME_VALUE}   visible     timeout=5s
    Sleep    3

    IF    ${visible}==True
        Wait For Elements State   ${BTN_LOGOUT}       visible    timeout=10s

        #Click en botón 'Buscar' y busca palabra 'Javascript'
        Fill Text      ${BTN_SEARCHBOX}    Javascript
        Sleep        2
        Click        ${BTN_SEARCH}
        Sleep        3

        # Cuenta cuántas filas <tr> hay dentro del <tbody>
        # Get Element Count - devuelve cuántos elementos coinciden con el selector.
        # se puede usar:
        # css=table tbody tr → todas las filas del cuerpo de la tabla.
        # css=table tr → todas las filas (incluye encabezados si existen).

        ${row_count}=    Get Element Count    css=table tbody t
        Log To Console    El número de filas es: ${row_count}

        # Cuenta todas las filas (divs con clase 'rt-tr-group')
        # css=.rt-tbody .rt-tr-group → selecciona todos los div que son filas
        ${num_filas}=    Get Element Count    css=.rt-tbody .rt-tr-group
        Log To Console    El número total de filas es: ${num_filas}

        # Si quieres ignorar filas vacías (-padRow)
        # :not(:has(.-padRow)) → excluye los renglones “vacíos” de padding (los que tienen class="-padRow").
        ${num_filas_visibles}=    Get Element Count    css=.rt-tbody .rt-tr-group:not(:has(.-padRow))
        Log To Console    El número de filas con datos es: ${num_filas_visibles}

        #************#
        # Obtener todos los títulos

        #Contar y Validar Libros
        ${links}=    Get Elements    ${LIBROS_LOCATOR}
        ${num_links}=    Get Length    ${links}
        Log    Se encontraron ${num_links} libros
        FOR    ${link}    IN    @{links}
            ${titulo}=    Get Text    ${link}
            Log To Console    Libro encontrado: ${titulo}
            Should Contain Any    ${titulo}    JavaScript
        END

        #Cierre de sesión del usuario
        Click     ${BTN_LOGOUT}

        #Muestra en qué carpeta se está ejecutando el test
        Log To Console     cur d - ${CURDIR}
        #Muestra el directorio de ejecución
        Log To Console     exe d - ${EXECDIR}

    ELSE
        #Obtiene el texto del error y lo compara
        ${LBL_ERROR}=    Get Text     xpath=//*[@id="name"]
        Should Contain    ${LBL_ERROR}    Invalid username or password!
        Log     ${LBL_ERROR}
    END



