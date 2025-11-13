*** Settings ***
Documentation     Suite Test para abrir el navegador desde Robot Framework.
Library           Browser

*** Variables ***
${HEADLESS}    False
${BROWSER}     chromium

*** Test Cases ***
Realizando mi primera ejecución Web en QA Pro Level
    [Documentation]    Abre el sitio de QAXpert y verifica que el título contiene "QAXpert".
    New Browser    browser=${BROWSER}   headless=${HEADLESS}
    New Context    ignoreHTTPSErrors=True
    Set Browser Timeout    120s
    New Page    url=https://qaxpert.com    wait_until=domcontentloaded
    ${title}=    Get Title
    Should Contain    ${title}    QAXPERT
    Sleep    5s
    Close Browser
