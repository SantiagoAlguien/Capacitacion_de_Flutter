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

bool _subscrito = false; //Bandera boleana de validacionn

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
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 255, 0, 0)),
                ),
                child: Text(
                  "Suscribirme a este canal",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  showDialog(
                      barrierDismissible: true,
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text(
                            _subscrito ? //Lo que hacemos es una eleccion de que si false imprima "Cancelar suscribirse": si es true "Suscribirse"
                            "Cancelar suscribirse":
                            "Suscribirse"
                            ),
                          content: Text("¿Estas seguro ?"),
                          actions: [
                            TextButton(
                                child: Text("Cancelar"),
                                onPressed: () {
                                  print("No");
                                  Navigator.pop(context);
                                },
                                ),
                            TextButton(
                                onPressed: () {
                                  print("Si");
                                  setState(() {
                                    _subscrito = !_subscrito;
                                  });
                                  setState(() {}); //Este va en los los widgets
                                  Navigator.pop(context);
                                },
                                child: Text("Aceptar")),
                          ],
                        );
                      });
                },
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Text(
              _subscrito
                  ? "Subscrito"
                  : "No subscrito", //lo que hace esto es validar si la variable esta en true para mostrar "Subscrito" sino entonces "No Subscrito"
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
          title: Text(
            _subscrito ? "Subscribirse" : "Cancelar subscripcion"//Condicional ternario
          ),
          content: Text(
            _subscrito 
            ? "¿Estas seguro de que quieres cancelar suscribirse ?" : 
            "¿Estas seguro de que quieres suscribirte ?"
            ),
          actions: [
            TextButton(
                onPressed: () {
                  print("No");
                  Navigator.pop(context);
                  _subscrito = false;
                },
                child: Text("Cancelar")),
            TextButton(
                onPressed: () {
                  print("Si");
                  _subscrito = true;
                  Navigator.pop(context);
                },
                child: Text("Aceptar")),
          ],
        );
      });
}