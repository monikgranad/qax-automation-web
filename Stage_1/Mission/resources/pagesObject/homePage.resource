*** Settings ***
Documentation     Elementos de la página de inicio (Home) de Book Store.
...               Este archivo contiene los localizadores de los elementos principales
...               visibles en el Home: el botón de acceso y el nombre del usuario autenticado.


*** Variables ***
# URL de la página principal
${HOME_URL}       https://demoqa.com/

# Botón para ir al Book Store
${BTN_BOOK_STORE}     role=heading[name="Book Store Application"]

# Botón de Login
${BTN_LOGIN}     id=login

# Campo de Búsqueda
${BTN_SEARCHBOX}     id=searchBox

# Botón de Buscar
${BTN_SEARCH}     id=basic-addon2

#Botón Book Appointment mostrado después del inicio de sesión exitoso
#${BTN_BOOK}    id=btn-book-appointment
