# Sistema de Rutas ( 💯 NAVEGACIÓN)

Vamos a crear un sistema de paginas por medio de las rutas en flutter esto es para decir que por que medio podemos navergar

    body: Center(
        child: MaterialButton(
        onPressed: (){
        NavigationBar route = MaterialPageRoute(builder: (context) => OtraPage()) as NavigationBar;
        Navigator.push(context, route as Route<Object?>);
        },
        child: Text("Ir a otra pagina")
        ),
    ),

Esta es una forma de hacer un cambio de pagina pero es la menos eficiente entonces mostrara la mejor forma de hacerlo

el cambio de ventana funciona como un sistema de cartas de intercambios de imaagenes

    import 'package:flutter/material.dart';
    import 'package:mi_aplicacion_flutter/pages/404_page.dart';
    import 'package:mi_aplicacion_flutter/pages/homePage.dart';
    import 'package:mi_aplicacion_flutter/pages/otraPage.dart';
    import 'package:mi_aplicacion_flutter/pages/serviciosPage.dart';
    
    void main() {
      runApp(MiApp());
    }
    
    class MiApp extends StatefulWidget {
      const MiApp({Key? key});
      @override
      _MiAppState createState() => _MiAppState();
    }
    
    class _MiAppState extends State<MiApp> {
      @override
      Widget build(BuildContext context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false, // método para eliminar la palabra debug arriba
          title: "Pruebas flutter",
          initialRoute: '/',
          routes: <String, WidgetBuilder> {
            '/': (context) => HomePage(),
            '/otraPage': (context) => OtraPage(),
            '/servicios': (context) => ServiciosPage(),
          },
          onGenerateRoute: (settings) {
            return MaterialPageRoute(builder: (context)=> Page404()); //Aqui definimos donde nos redirige si sale algun        error en la
          },
        );
      }
    }

Para hacer el cambio de paginas con un material button podemos usar el Navigator.pushNamed que nos permite regresar entre paginas si es lo que queremos 

    onPressed: () {
        Navigator.pushNamed(context, "/otraPage");
    },

Tambien si no queremos que nos de la opcion de devolvenos podemos usar el Navigator.pushReplacementeNamet que nos permite navegar por el nombre de la pagina y que nos quita la opcion de devolvernos es muy itul sino queresmos que se devuelva en una pagina 

    onPressed: () {
        Navigator.pushReplacementeNamet(context, "/otraPage");
    },

## Organizar las rutas en un archivo 

si queresmos gestionar nuestras rutas debemos crear un archivo index.dart en donde guardaremos todas las paginas en donde vamos a navegar en la aplicacion.

creamos el archivo y guardamos las rutas asi 

    export 'package:mi_aplicacion_flutter/pages/404_page.dart';
    export 'package:mi_aplicacion_flutter/pages/homePage.dart';
    export 'package:mi_aplicacion_flutter/pages/otraPage.dart';
    export 'package:mi_aplicacion_flutter/pages/serviciosPage.dart';

y ya en el main los importamos normamente como index en el archivo para tener mejor organixzado