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
            Container(
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:MaterialStateProperty.all<Color>(Color.fromARGB(255, 255, 0, 0)),
                ) ,
                child: Text(
                  "Suscribirme a este canal",
                  style: TextStyle(fontSize: 20),
                  
                ),
                onPressed: () {
                  mostrarAlerta(context);
                },
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Text("No susbcrito",
            style: TextStyle(fontSize: 20),
            ),
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
      builder: (context) {
        return AlertDialog(
          title: Text("Suscribirse"),
          content: Text("¿Estas seguro ?"),
          actions: [
            TextButton(
                onPressed: () {
                  print("No");
                  Navigator.pop(context);
                },
                child: Text("No quiero")),
            TextButton(
                onPressed: () {
                  print("Si");
                  Navigator.pop(context);
                },
                child: Text("Si quiero")),
          ],
        );
      });
}
