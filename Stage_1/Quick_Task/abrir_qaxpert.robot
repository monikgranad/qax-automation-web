*** Settings ***
Documentation     Suite Test para abrir el navegador desde Robot Framework.
Library           Browser

*** Variables ***
${HEADLESS}    False


*** Test Cases ***
Realizando mi primera ejecución Web en QA Pro Level
    [Documentation]    Abre el sitio de QAXpert y verifica que el título contiene "QAXpert".
    New Browser    browser=${BROWSER}
    New Context
    New Page           https://qaxpert.com
    ${title}=          Get Title
    Should Contain     ${title}    QAXPERT
    Sleep              2
