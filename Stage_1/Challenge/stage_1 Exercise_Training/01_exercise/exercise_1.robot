*** Settings ***
Library    Browser
Documentation  Aprendiendo  todo sobre browser library

*** Variables ***
${BROWSER}      chromium
${HEADLESS}     false
${URL}          https://www.amazon.com/

*** Test Cases ***
Enviar un Mensaje
    [Documentation]    Verificar que el usuario sea redirigido a página de Amazon.
    [Tags]    positivo    critico
    New Browser    browser=${BROWSER}    headless=${HEADLESS}
    New Context    ignoreHTTPSErrors=True
    New Page    ${URL}   wait_until=domcontentloaded