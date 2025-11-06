setup.resource
*** Settings ***
Documentation     Configuración del navegador en pruebas con Browser Library.
Library           Browser
Resource    ../pagesObject/homePage.resource
Resource    ../pagesObject/loginPage.resource

*** Keywords ***
Abrir navegador y acceder al sitio
    [Documentation]    Abre el navegador Chromium y navega hacia la URL definida en la variable ${HOME_URL}.
    New Browser    chromium    headless=False
    New Context
    New Page       ${HOME_URL}


Cerrar navegador
    [Documentation]    Cierra todos los navegadores abiertos al finalizar la suite o el test.
    Close Browser
