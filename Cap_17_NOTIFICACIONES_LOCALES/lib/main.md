import 'package:flutte_aplicacion/services/notification_service.dart';
import 'package:flutter/material.dart';

 
class MiApp extends StatefulWidget {
  const MiApp({super.key});
 
  @override
  // ignore: library_private_types_in_public_api
  _MiAppState createState() => _MiAppState();
}

class _MiAppState extends State<MiApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // metodo para eliminar la palabra debug arriba
      title: "Pruebas flutter",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Notificaciones Locales"),
        ),
        body: PaginaPrincipal()
      )
    );
  }
}

class PaginaPrincipal extends StatelessWidget {  
  
  const PaginaPrincipal({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialButton(
      color: Color.fromARGB(255, 12, 125, 255),  
      onPressed: () {
        mostrarNotificacion();  
        //Aqui enviamos la notificacion
      },
      child: const Text("Hola mundo"),
      ),
    );
  }
}