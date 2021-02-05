# Ejemplo de composición de texto con LaTeX
Este repositorio pretende ser una compilación de comandos que se realizan
con LaTeX para tenerlos accesibles. Además, pretende ser un documento en 
español para facilitar a los hablantes de este idioma el empezar con la
composición de texto.
El grueso del tutorial está hecho con LaTeX y se renderizará en un PDF,
en este _readme_ sólo indicaré cómo se debe compilar el documento
(document.tex) para conseguir el tutorial íntegro, propiamente dicho.
## Instalación en Windows:
En sistemas windows, la instalación de reliza como otras herramientas de
_software_, se descarga un `.exe` y se siguen las instrucciones
del instalador. En nuestro caso, debemos instalar dos programas:
* MikTex, el «motor» de LaTeX, que nos permitiría compilar
mediante línea de comandos. Este programa se puede descargar desde 
[aquí](https://miktex.org/downloadi). 
* TexStudio, el editor de documentos LaTeX, que nos permite compilar
sin tener que usar la línea de comandos de Windows. Se puede descargar
desde [aquí](https://www.texstudio.org/).
Durante el proceso de
instalación de MikTex se nos hará decidir la ruta de instalación y si permitimos
que el programa descargue de internet los paquetes necesarios. Yo
recomiendo permitirle hacerlo. Para ello se deben dejar las opciones como
se ve en la siguiente imagen:
![opciones de miktex](https://github.com/FranciscoRguezMelgar/latexExample/blob/main/img/miktexInstall.png "Opciones instalación MikTex")
Cuando se tengan los dos programas instalados, deberá abrirse el fichero
`document.tex` que se encuentra en la raíz del repositorio
con el segundo programa (TexStudio). Una vez hecho hecho, debe pulsarse la tecla
F5, que nos compilará el documento, generará el pdf y mostrará el resultado a la
derecha como se puede ver en la figura
![ventana de TexStudio](https://github.com/FranciscoRguezMelgar/latexExample/blob/main/img/TeXStudio.png "Vetana de TexStudio")

