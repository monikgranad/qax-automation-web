*** Settings ***
Library    Browser
Documentation    Demostración de exact match con text= y role= en Register.html

*** Variables ***
# 🌐 Página a automatizar
${URL_REGISTER}      https://demo.automationtesting.in/Register.html

# ✏️ Campos de texto (textbox)
${TXT_FIRSTNAME}     role=textbox[name="First Name"]
${TXT_LASTNAME}      role=textbox[name="Last Name"]

# 🔘 Botones
${BTN_SUBMIT}        role=button[name="Submit"]

# ⚧ Radio Buttons (usando texto visible)
${RADIO_FEMALE}      text=FeMale

# ☑️ Checkboxes (usando texto visible)
${CHK_CRICKET}       id=checkbox1
${CHK_MOVIES}        id=checkbox2

# 🧠 Combobox / Select
${COMBO_SKILLS}      id=Skills
#${OPTION_SKILL}      text=Python


*** Test Cases ***
Formulario Con Roles Accesibles
    [Documentation]      Caso de prueba que llena el formulario de registro usando
         ...              localizadores accesibles (`role=`).
         ...              Incluye textbox, radio buttons, checkboxes, select y botón submit.

    # 🧭 Abrir navegador y página de registro
    New Browser    chromium    headless=false
    New Page       ${URL_REGISTER}      wait_until=domcontentloaded

    # 📝 Rellenar campos de texto - Full Name
    Fill Text      ${TXT_FIRSTNAME}    Andrea
    Fill Text      ${TXT_LASTNAME}     Ramirez
    Sleep    1

    Click          ${RADIO_FEMALE}
    Sleep    1

    # ☑️ Seleccionar hobbies
    Click          ${CHK_CRICKET}
    Sleep    1
    Click          ${CHK_MOVIES}
    Sleep    1

    # 🧠 Seleccionar habilidad
    Select Options By    ${COMBO_SKILLS}   text     Python
    Sleep    3


    # 🚀 Enviar formulario
    Click          ${BTN_SUBMIT}
    Sleep    3
