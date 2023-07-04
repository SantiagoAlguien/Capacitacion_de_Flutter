# Consumiendo un API REST ( Future / http )

En este video veremos vamos a poner en practica lo que aprendimos en anterioeres videos de clases clases y listas lo que vamos a hacer es consumir una API en flutter.

## Intacion de paquete 

Es paquete tieene la funcion de ayudarnos en hacer peticiones a internet y se instala de la siguiente forma 

**Primero:** 

Ingresamos al link [http](https://pub.dev/packages/http) que ahi encontraremos los datos del paquete http como su informacion y forma de instalacion 

**Segundo:**
Despues seguimos a la seccion de "Installing " que ahi nos dice en la depencia que debemos copiar 

    dependencies:// no es nesesario copiar dependencies
  http: ^1.1.0

## Confugarion pubspec.yaml

Ya con el paquete copiado nos dirijimos al proyecto de flutter en la carpeta "pubspec.yaml" en donde pegaremoos el paquete en la seccion de "dependencias" de esta forma 

    dependencies:
    flutter:
        sdk: flutter 
    cupertino_icons: ^1.0.2
      http: ^1.1.0 //Paquete que copiamos 
