import 'package:flutter/material.dart';

void main() => runApp(const MiApp());

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Mi primera App",
      home:
          Inicio(), //Este constructor es el que llama a la class Inicio extends StatefulWidget que inicia todo el Scafold
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({super.key});
  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AlertDialog"),
      ), //Barra superior de navegacion
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Mostrar"),
              onPressed: () {
                mostrarAlerta(context);
              },
            ),
            SizedBox(
              height: 100,
            ),
            Text("si"),
          ],
        ),
      ),
    );
  }
}

void mostrarAlerta(BuildContext context) {
  //Funcion que va a contener nuestra alerta
  showDialog(
    barrierDismissible: true,
    context: context,
    builder: (context){
      return AlertDialog(
        title: Text("hola"),
        content: Text("¿Como estas ?"),        
      );
    }
  );
}
