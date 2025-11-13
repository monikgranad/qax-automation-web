*** Settings ***
Documentation     Elementos de la página de inicio (Home) de CURA Healthcare Service.
...               Este archivo contiene los localizadores de los elementos principales
...               visibles en el Home: el botón de acceso y el nombre del usuario autenticado.


*** Variables ***
# URL de la página principal
${HOME_URL}       https://katalon-demo-cura.herokuapp.com/

# Botón para ir al formulario de Login
${BTN_MAKE_APPOINTMENT}     id=btn-make-appointment


# Etiqueta mostrada después del inicio de sesión exitoso
#${LBL_MAKE_APPOINTMENT}     role=heading[name="Make Appointment"]

#Botón Book Appointment mostrado después del inicio de sesión exitoso
${BTN_BOOK}    id=btn-book-appointment
