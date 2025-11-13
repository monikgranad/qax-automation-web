*** Settings ***
Library    Browser


*** Variables ***
${HEADLESS}    False
${BROWSER}     chromium
${url}         https://www.amazon.com/?language=es_US

${TXT_SEARCH}   role=searchbox[name="Buscar en Amazon"]
${COMBO_SEARCH}     id=searchDropdownBox
${SHOPPING_CART}    id=nav-cart

*** Test Cases ***
Ejemplo Get By Role
    New Browser    browser=${BROWSER}   headless=${HEADLESS}
    New Context    ignoreHTTPSErrors=True
    Set Browser Timeout    120s
    New Page    ${url}      wait_until=domcontentloaded

    #Da click en botón 'Ofertas del Día'
    Click        role=link[name="Ofertas del Día"]
    Sleep        3

    #Navega a página de Amazon, dando click en el Logo de Amazon
    Click        role=link[name="Amazon"]
    Sleep        3

    #Valida el Título de la página
    ${title}=    Get Title
    Should Contain    ${title}    Amazon.com en espanol. Gasta menos. Sonríe más.
    Log     ${title}
    Sleep        3

    #Click en botón 'Buscar en Amazon' y busca palabra 'Navidad'
    Fill Text      ${TXT_SEARCH}    Navidad
    Click        role=button[name="Ir"]
    Sleep        3

    #Click en botón 'Menu hamburgesa' y lo cierra
    Click        role=button[name="Abrir menú de todas las categorías"]
    Sleep        3
    Click        role=button[name="Cerrar menú"]
    Sleep        3

    #Click en botón 'Todos' y elige la opción 'Computadoras' del menu desplegable
    Select Options By    ${COMBO_SEARCH}    text     Computadoras
    Sleep        3
    Fill Text      ${TXT_SEARCH}    Laptop
    Click        role=button[name="Ir"]
    Sleep        3

    #Click en botón 'Carrito de compras'
    Click        ${SHOPPING_CART}
    Sleep        3

    #Navega a página de Amazon, dando click en el Logo de Amazon
    Click        role=link[name="Amazon"]
    Sleep        3

    #Navega a sección 'Relojes favoritos'
    Scroll To Element    text=Relojes favoritos
    Click        text=Relojes favoritos
    Sleep        3

    #Click en botón 'Identifícate' de sección 'Ver recomendaciones personalizadas'
    Scroll To Element    text=Ver recomendaciones personalizadas
    Click        role=link[name="Identifícate"]
    Sleep        3

    Close Browser
