1. Localización de Elementos en Amazon
2. Ingresa a https://www.amazon.com.
3. Identifica 10 elementos diferentes en la página (botones, campos, enlaces, menús, etc.).
4. Elige cuál es el localizador más estable y explica brevemente por qué.
   Al parece el localizador más estable es por atributo siempre y cuando 
se haga la búsqueda con más de una propiedad para validar que sea único.


1. Title
HTML
<title>Amazon.com en espanol. Gasta menos. Sonríe más.</title>

Localizador por atributo:
//title

Localizador por CSS selector:
head > title

Localizador por XPath:
-XPath:
/html/head/title

-XPath completo:
/html/head/title


2. Logo
HTML
<a href="/-/es/ref=nav_logo" id="nav-logo-sprites" class="nav-logo-link nav-progressive-attribute" aria-label="Amazon" lang="en">
      <span class="nav-sprite nav-logo-base"></span>
      <span id="logo-ext" class="nav-sprite nav-logo-ext nav-progressive-content"></span>
      <span class="nav-logo-locale">.us</span>
    </a>

Localizador por atributo:
//a[(@id='nav-logo-sprites')]

Localizador por CSS selector:
#nav-logo-sprites

Localizador por XPath:
- XPath
//*[@id="nav-logo-sprites"]

- XPath completo
/html/body/div[1]/header/div/div[1]/div[1]/div[1]/a


3. Link - Ofertas del dia
HTML
<a href="/-/es/gp/goldbox?ref_=nav_cs_gb" class="nav-a  " tabindex="0" data-csa-c-type="link" data-csa-c-slot-id="nav_cs_0" data-csa-c-content-id="nav_cs_gb" data-csa-c-id="anc06y-j84asn-39kgts-wotgty">Ofertas del Día</a>

Localizador por atributo:
//a[@data-csa-c-id='anc06y-j84asn-39kgts-wotgty']
//*[text()='Ofertas del Día']

Localizador por CSS selector:
#nav-xshop > ul > li:nth-child(1) > div > a

Localizador por XPath:
- XPath
//*[@id="nav-xshop"]/ul/li[1]/div/a

- XPath completo
/html/body/div[1]/header/div/div[5]/div[2]/div/div/ul/li[1]/div/a


4. button - Ampliar para cambiar el idioma o país
HTML
<button class="nav-flyout-button nav-icon nav-arrow" 
aria-label="Ampliar para cambiar el idioma o país" tabindex="0" 
style="visibility: visible;"></button>

Localizador por atributo:
//button[@aria-label='Ampliar para cambiar el idioma o país' and @class='nav-flyout-button nav-icon nav-arrow']");

Localizador por CSS selector:
#icp-nav-flyout > button

Localizador por XPath:
- XPath
//*[@id="icp-nav-flyout"]/button

- XPath completo
/html/body/div[1]/header/div/div[1]/div[3]/div/div[1]/button


5. input
<input type="text" id="twotabsearchtextbox" value="" name="field-keywords" 
autocomplete="off" placeholder="Buscar en Amazon" 
class="nav-input nav-progressive-attribute" dir="auto" 
tabindex="0" aria-label="Buscar en Amazon" role="searchbox" 
aria-autocomplete="list" aria-controls="sac-autocomplete-results-container" 
aria-expanded="false" aria-haspopup="grid" spellcheck="false">

Localizador por atributo:
//input[@id='twotabsearchtextbox']

Localizador por CSS selector:
#twotabsearchtextbox

Localizador por XPath:
- XPath
//*[@id="twotabsearchtextbox"]

- XPath completo
/html/body/div[1]/header/div/div[1]/div[2]/div/form/div[3]/div[1]/input


6. button - Menu hamburgesa
HTML
<a href="javascript: void(0)" id="nav-hamburger-menu" role="button" 
aria-label="Abrir menú de todas las categorías" aria-expanded="false" 
data-csa-c-type="widget" data-csa-c-slot-id="HamburgerMenuDesktop" 
data-csa-c-interaction-events="click" data-csa-c-id="qyurrf-o829d3-5akdyv-5ktz1e">
    <i class="hm-icon nav-sprite"></i>
    <span class="hm-icon-label">Todo</span>
  </a>

Localizador por atributo:
//a[@id='nav-hamburger-menu']

Localizador por CSS selector:
#nav-hamburger-menu

Localizador por XPath:
- XPath
//*[@id="nav-hamburger-menu"]

- XPath completo
/html/body/div[1]/header/div/div[5]/div[1]/a


7. Select Buscar
HTML
<select aria-describedby="searchDropdownDescription" class="nav-search-dropdown searchSelect nav-progressive-attrubute nav-progressive-search-dropdown" data-nav-digest="bc4g2gpX93q5i825SIMRprMtYdc=" data-nav-selected="0" id="searchDropdownBox" name="url" style="display: block; top: 2.5px;" tabindex="0" title="Buscar en">
        <option selected="selected" value="search-alias=aps">Todos los departamentos</option>
        <option value="search-alias=arts-crafts-intl-ship">Arte y artesanías</option>
        <option value="search-alias=automotive-intl-ship">Automotriz</option>
        <option value="search-alias=baby-products-intl-ship">Bebé</option>
        <option value="search-alias=beauty-intl-ship">Belleza y cuidado personal</option>
        <option value="search-alias=movies-tv-intl-ship">Cine y TV</option>
        <option value="search-alias=computers-intl-ship">Computadoras</option>
        <option value="search-alias=sporting-intl-ship">Deportes y actividades al aire libre</option>
        <option value="search-alias=electronics-intl-ship">Electrónicos</option>
        <option value="search-alias=luggage-intl-ship">Equipaje</option>
        <option value="search-alias=tools-intl-ship">Herramientas y mejoramiento del hogar</option>
        <option value="search-alias=kitchen-intl-ship">Hogar y cocina</option>
        <option value="search-alias=industrial-intl-ship">Industrial y científico</option>
        <option value="search-alias=pets-intl-ship">Insumos para mascotas</option>
        <option value="search-alias=toys-and-games-intl-ship">Juguetes y juegos</option>
        <option value="search-alias=stripbooks-intl-ship">Libros</option>
        <option value="search-alias=fashion-girls-intl-ship">Moda de niñas</option>
        <option value="search-alias=fashion-boys-intl-ship">Moda de niños</option>
        <option value="search-alias=fashion-mens-intl-ship">Moda para Hombre</option>
        <option value="search-alias=fashion-womens-intl-ship">Moda para Mujer</option>
        <option value="search-alias=digital-music">Música MP3</option>
        <option value="search-alias=music-intl-ship">Música, CD y vinilos</option>
        <option value="search-alias=deals-intl-ship">Ofertas</option>
        <option value="search-alias=instant-video">Prime Video</option>
        <option value="search-alias=hpc-intl-ship">Salud y productos para el hogar</option>
        <option value="search-alias=software-intl-ship">Software</option>
        <option value="search-alias=digital-text">Tienda Kindle</option>
        <option value="search-alias=videogames-intl-ship">Videojuegos</option>
    </select>

Localizador por atributo:
//SELECT[@id='searchDropdownBox']

Localizador por CSS selector:
#searchDropdownBox

Localizador por XPath:
- XPath
//*[@id="searchDropdownBox"]

- XPath completo
/html/body/div[1]/header/div/div[1]/div[2]/div/form/div[2]/div/div/select


8. Span Carrito de compra
HTML
<span class="nav-cart-icon nav-sprite"></span>
Localizador por atributo:
//span[@class='nav-cart-icon nav-sprite']

Localizador por CSS selector:
#nav-cart-count-container > span.nav-cart-icon.nav-sprite

Localizador por XPath:
-XPath
//*[@id="nav-cart-count-container"]/span[2]

- XPath completo
/html/body/div[1]/header/div/div[1]/div[3]/div/a[2]/div[1]/span[2]


9. h2 Compra los esenciales para tu hogar
HTML
<h2 class="a-color-base headline truncate-2line">Compra los esenciales para tu hogar<span class="nav-cart-icon nav-sprite"></span></h2>

10. Localizador por atributo:
//h2[@class='a-color-base headline truncate-2line' and text()='Compra los esenciales para tu hogar']

Localizador por CSS selector:
#CardInstance4KspNYSKFUMJPAqGWDfwQw > div.a-cardui-header > h2

Localizador por XPath:
- XPath
//*[@id="CardInstance4KspNYSKFUMJPAqGWDfwQw"]/div[1]/h2

- XPath completo
/html/body/div[1]/div[1]/div[2]/div[2]/div[1]/div/div[1]/h2

10. span Los Más Vendidos en Computadoras y Accesorios
<span class="a-color-base">Los Más Vendidos en Computadoras y Accesorios</span>

Localizador por atributo:
//span[@class='a-color-base' and text()='Los Más Vendidos en Computadoras y Accesorios']

Localizador por CSS selector:
#\36 be13aaf-cd47-4933-8b1d-f971d61d77a8 > div.a-section.as-title-block > h2 > span

Localizador por XPath:
- XPath
//*[@id="6be13aaf-cd47-4933-8b1d-f971d61d77a8"]/div[1]/h2/span

- XPath completo
/html/body/div[1]/div[1]/div[2]/div[3]/div/div[13]/div/div/div[1]/h2/span


11. button - Identifícate (footer)
HTML
<a href="https://www.amazon.com/ap/signin?openid.mode=checkid_setup&amp;openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0&amp;openid.return_to=https%3A%2F%2Fwww.amazon.com%2Fref%3Drhf_sign_in&amp;openid.assoc_handle=usflex&amp;openid.pape.max_auth_age=0" 
class="a-button-text"><span>Identifícate</span></a>

12. Localizador por atributo:
//a[@class='a-button-text']

Localizador por CSS selector:
#CardInstanceQ85-ekZbJvQ2QFE4S71zUw > div > div > span > span > a

Localizador por XPath:
- XPath
//*[@id="CardInstanceQ85-ekZbJvQ2QFE4S71zUw"]/div/div/span/span/a

- XPath completo
/html/body/div[1]/div[2]/div/div[1]/div/div[2]/div/div/div/span/span/a


12. LINK Trabaja en Amazon (footer)
HTML
<a href="https://www.amazon.jobs" class="nav_a">Trabaja en Amazon</a>

Localizador por atributo:
//a[@class='nav_a' and text()='Trabaja en Amazon']

Localizador por CSS selector:
#navFooter > div.navFooterVerticalColumn.navAccessibility > div > div:nth-child(1) > ul > li.nav_first > a

Localizador por XPath:
- XPath
//*[@id="navFooter"]/div[1]/div/div[1]/ul/li[1]/a

- XPath completo
/html/body/div[1]/div[3]/div[1]/div/div[1]/ul/li[1]/a