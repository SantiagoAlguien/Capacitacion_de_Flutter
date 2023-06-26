import 'package:flutter/material.dart';

void main() => runApp(const MiApp());

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text("Widgets"),), //quitamos el Appbard
      body:cuerpo(), //llamando a la funcion cuerpo
      ); 
  }
}

Widget cuerpo(){ //asi se crea una funcion que contiene el cuerpo y vamos a guardar el contenido 
  return Container( //contenedor que contiene los widgets
    decoration: const BoxDecoration(
      image: DecorationImage (image: NetworkImage("https://w.forfun.com/fetch/13/13527a890a0f9ad5bec0675cb0d1062c.jpeg"),
      fit:BoxFit.cover
      )
    ),
    child: Center(  //Espesificamos que este en el centro 
      child: Column( //insertamos column para que guarde varios widgets
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget> [ //contenedor de varios hijos y toca especificar los que tendra
        nombre(),
        campoUsuario(),
        contrasena(),
        SizedBox(height: 15,),
        botonEntrar(),
      ],
      )
  ));
}

Widget nombre(){ //Clase que se crea con Widget 
  return const Text("Sing in", style: TextStyle( // Un texto que contiene Sing in y el cual le ponemos estilo con style: TextStyle()
    color: Colors.white, //color de texto 
    fontSize: 35.0, //Tamaño de texto
    fontWeight: FontWeight.bold) //El tipo de letra de texto
    );
}

Widget campoUsuario(){
  return Container( //Es un contenedor
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    child: const TextField( //Es un input donde podemos inserta texto donde se guarda en una caja 
      decoration: InputDecoration(
        hintText: "User",
        fillColor: Colors.white,
        filled: true
      ),   
    ),
  );
}

Widget contrasena(){
  return Container( //Es un contenedor
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    child: const TextField( //Es un input donde podemos inserta texto 
      obscureText: true, //lo que hace este widget es ocultar las palabras de la caja de texto
      decoration: InputDecoration(
        hintText: "Contraseña",
        fillColor: Colors.white,
        filled: true
      ),   
    ),
  );
}

Widget botonEntrar(){
  return MaterialButton(
    padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
    color: Colors.blueAccent,
    onPressed: (){},
    child: Text("Enter", style: TextStyle(fontSize: 25, color: Colors.white),),
  );
}