import 'package:flutter/material.dart';
import 'package:flutte_aplicacion/widgets/formulario_pago.dart';

void main() => runApp( const MiApp());
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
          title: const Text("Pago con tarjeta"),
        ),
        body: FromCard()
      )
    );
  }
}