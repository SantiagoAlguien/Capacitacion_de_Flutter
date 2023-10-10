# CRUD Firebase #1  (Conexión con FlutterFire)

Para crear un CRUD en firebase en flutter en debemos crear un proyecto que contegan la informacion del proyecto

con el comando 

    flutter create --org com.santiago crud_firebase

despues vamos a la consolo del proyecto que tengamos y creamos uno nuevo en la pagina de firebase

luego de eso creamos una base de datos en la firestore en donde guardaremos los datos en una base de datos no SQL en la base de datos noSQL agregamos las coleciones de people 


## Agregar base de datos NOSQL en el proyecto de flutter

para agregar firebase a flutter debemos usar la herramienta de FlutterFire Overview es una herramienta para vincular flutter y firebase 

    https://firebase.flutter.dev/docs/overview/

en la pagina nos dice que usemos el comando en nuestro proyecto 

    flutter pub add firebase_core

luego de eso tenemos que instalar la harramienta de firabase en el dispositivo donde lo vayamos a usar y nos descarga un archivo ejecutable donde se ejecuta el programa de instalacion normal con el flutterFireCLI

Luego ejecutamos el flutterfire_cli en nuestro proyecto

    dart pub global activate flutterfire_cli

despues de activarlo lo vamos a configurara con el comando 

    
    