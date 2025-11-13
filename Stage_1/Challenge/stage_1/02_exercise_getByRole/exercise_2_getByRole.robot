*** Settings ***
Library    Browser
Documentation    🧩 Este archivo demuestra cómo automatizar un formulario utilizando \
      ...         locators accesibles con `role=` en Robot Framework + Browser Library. \
      ...         Los selectores están guardados en variables para facilitar el mantenimiento \
      ...          y seguir buenas prácticas de legibilidad y reutilización.

*** Variables ***
# 🌐 Página a automatizar
${URL_REGISTER}      https://demo.automationtesting.in/Register.html

# ✏️ Campos de texto (textbox)
${TXT_FIRSTNAME}     role=textbox[name="First Name"]
${TXT_LASTNAME}      role=textbox[name="Last Name"]

# 🔘 Botones
${BTN_SUBMIT}        role=button[name="Submit"]

*** Test Cases ***
Formulario Con Roles Accesibles
    [Documentation]      Caso de prueba que llena el formulario de registro usando
         ...              localizadores accesibles (`role=`).
         ...              Incluye textbox, radio buttons, checkboxes, select y botón submit.

    # 🧭 Abrir navegador y página de registro
    New Browser    chromium    headless=false
    New Page       ${URL_REGISTER}      wait_until=domcontentloaded

    # 📝 Rellenar campos de texto
    Fill Text      ${TXT_FIRSTNAME}    Andrea
    Fill Text      ${TXT_LASTNAME}     Ramirez
    Sleep    3

    # 🚀 Enviar formulario
    Click          ${BTN_SUBMIT}
    Sleep    3
