import 'dart:ffi';
import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(const MiApp());

class MiApp extends StatefulWidget {
  const MiApp({super.key});

  @override
  State<MiApp> createState() => _MiAppState();
}

class _MiAppState extends State<MiApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Mi primera App",
      home: Inicio(), //Este constructor es el que llama a la class Inicio extends StatefulWidget que inicia todo el Scafold
    );
  }
}
class Inicio extends StatefulWidget {
  const Inicio({super.key});
  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  
  double _width = 100.0; //alto
  double _height = 100.0; //ancho
  Color _color = Color.fromARGB(255, 0, 0, 0); //color del contenedor 
  BorderRadius _borderRadius = BorderRadius.circular(1000); //Borde del contenedor puede ir a 1000

  void _cambiarContainer(){ //Funcion que hace el cambio de estado del contenedor que llamamos 
    final random = Random(); // Clase final que llama a Ramdom para generar los numeros 
      _width = random.nextInt(350).toDouble(); //llamamos a la clase ramdon y especificamos que genere un numero tipo int aleatorio de maximo 350 
      _height = random.nextInt(350).toDouble();
      _color = Color.fromARGB(random.nextInt(255), random.nextInt(255), random.nextInt(255), random.nextInt(255));
      _borderRadius = BorderRadius.circular(random.nextInt(255).toDouble());
      setState(() {} //Funcion para actualizar el estado rapido
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("AnimatedContainer"),
      ), //Barra superior de navegacion 
      body:Column(
        children: [
          Expanded(
            child: Center(
              child: AnimatedContainer( //Contenedor en el body //el AnimatedContainer guarda contenedores que pueden estar animados requiere de un duration
                duration: Duration(milliseconds: 500), //Especificando la duracuion de la trascicion del cambio 
                curve: Curves.bounceOut, //como queremos que sea el cambio 
                width: _width, //tamaño del contenedor
                height: _height, 
                decoration: BoxDecoration(
                  color: _color, //Color del contenedor
                  borderRadius: _borderRadius, //llamando a los valores por defecto 
                ),
              ),
            ),
          ),
          MaterialButton( 
            onPressed: _cambiarContainer, //llamammos a la funcion principal que hace el cambio del los contenedores
            child: Text("Container"),
          )
        ],
      ),
    );
  }
}