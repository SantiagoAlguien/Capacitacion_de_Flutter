# Cambiar el icono de tu App en Flutter

Para el cambio de del icino de uestro aplicacion en flutter se debe usar 

hay varias formas de hacerlo como a mano y la menera eficiente 

## Forma a mano 

toca ir a nuestro proyecto en la siguiente direccion C:\Users\Luis Carlos Triana\Documents\Capacitacion_de_Flutter\FlutterPruebas\nombreapp\android\app\src\main\res\mipmap-hdpi en los archivos mipmap cambiamos los datos como se muestra adentro con un archivo de imagen con el mismo nomrbe  quitamos la que ya estaba toca tener en cuenta el tamaño de las imagenes 

## Forma eficiente 

Otra forma es que usemos un paquete especifico  para esto tienemos que hacer un una instalcion ed una dependencia de flutter_launcher_icons: ^0.13.1 toca hacerlo en el mismo ranfo de dev_dependepncies


    flutter_launcher_icons: ^0.13.1

    flutter_icons:
        android: "launcher_icon"
        ios: true
        image_path: "assets/icon/icon.png"


luego insertamsos el codigo en el terminar en la seccion de icon con 

    flutter pub run flutter_launcher_icons:main

    con flutter pub get

![img](Captura%20de%20pantalla%202023-09-04%20164540.png)