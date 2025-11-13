*** Settings ***
Library           Browser
*** Variables ***
${LNK_LOGO}       id=enterimg
${TXT_EMAIL}      id=email

*** Test Cases ***
Usando locators en variables
    New Browser    chromium    headless=false
    New Page       https://demo.automationtesting.in/Index.html
    Fill Text    ${TXT_EMAIL}     ninja4testing@qaxpert.com
    Sleep    1
    Click          ${LNK_LOGO}
    Sleep    4
    Close Browser