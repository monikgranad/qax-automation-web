*** Settings ***
Library    Browser
Documentation  Aprendiendo  todo sobre browser library

*** Variables ***
${BROWSER}    chromium
${HEADLESS}    false
${URL}          https://qaxpert.com/escribenos/

*** Test Cases ***
Enviar un Mensaje
    [Documentation]    Verificar que el usuario sea redirigido a su página de perfil después de un login exitoso.
    [Tags]    positivo    critico
    New Browser    browser=${BROWSER}    headless=${HEADLESS}
    New Context    ignoreHTTPSErrors=True
    New Page    ${URL}   wait_until=domcontentloaded