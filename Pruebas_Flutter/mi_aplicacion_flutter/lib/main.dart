import 'package:flutter/material.dart';
import 'package:mi_aplicacion_flutter/pages/index.dart';

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
        return MaterialPageRoute(builder: (context)=> Page404()); //Aqui definimos donde nos redirige si sale algun error en la
      },
    );
  }
}