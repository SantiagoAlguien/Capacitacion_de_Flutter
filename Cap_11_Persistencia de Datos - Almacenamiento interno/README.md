# Persistencia de Datos - Almacenamiento interno

La persistencia de datos son los datos que se guardan en el dispositivo para esto usaremos la libreria de shared_preferences

## Implementacion 

Para implementar shared_preferences vamos a la carpeta pubspec.ymal en dev_dependencies insertamos el la libreria que queremos implenmentar asi  

    dev_dependencies:
    flutter_test:
      sdk: flutter
    shared_preferences: ^2.2.0

Debe estar en la misma altura 


[Link de la libreria que se va a usar ](https://pub-dev.translate.goog/packages/shared_preferences?_x_tr_sl=en&_x_tr_tl=es&_x_tr_hl=es&_x_tr_pto=sc)

## Importar en el archivo .dart

Para importar la libreria recien instalada escribimos en el proyecto de dart

    import 'package:shared_preferences/shared_preferences.dart';

## Implementacion

para implementar la persistencia de datos usamos la palabra reservada de la libreria SharedPreferences asi 

    SharedPreferences prefs = await SharedPreferences.getInstance(); 
  
el prefs dice que preferencias queremos guardar para decir que queremos guardar nombramos el objecto creando donde queremosqeu se ejecute 

    setState(() {
      prefs.setInt("value", value); //nombrando el objecto y el . es para determinar que tipo de valor se va a guardar en este caso de tipo int 
      value ++;
    });

Exites un tipo de dato que permite almacenar en el SharedPreferences 

## Traer valores 

Para traer los valores que estamos guardando al precionar el boton toca hacer una funcion inistate que hara la consulta de los valores guardados

    @override
    void initState() {
    // TODO: implement initState
    super.initState();
    _cargarPreferencias();
    }

Tambien llama a la funcion que consulta los valores guardados

    _cargarPreferencias() async { //funcion ansicrona
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      value = prefs.getInt("value")! ?? 0; //consulta de los valores que se cuando se borran esstan en 0
      });
    }

![img](resultado.png)

[main](main.md)