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

Ya con el paquete copiado nos dirijimos al proyecto de flutter en la carpeta "pubspec.yaml" en donde pegaremos el paquete en la seccion de "dependencias" de esta forma 

    dependencies:
      flutter:
        sdk: flutter
      cupertino_icons: ^1.0.2
      http: ^1.1.0 //paquete que copiamos 

despues de eso presionamos ctrl + s para guardar los cambios verificando que tengamos la ultima version de flutter 

## Como consumir una API ya creada

Nos dirijiemos a la pagina de [GIPHY](https://developers.giphy.com/) con una cuenta logeada y damos clic en "Create an Appp" y nos aparece esta ventana 

![img](Giphy.png)

selecionando la API se nos abre otra ventana para poner los datos de nuestra API

![img](APIGiphy.png)

Despues podemos visualizar la API con el API Key