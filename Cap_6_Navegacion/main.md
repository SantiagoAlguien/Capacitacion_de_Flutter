import 'package:flutter/material.dart';
import 'package:helllo_word/Pagina02.dart';

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
      appBar: AppBar(title: const Text("Navegacion"),
      ), //Barra superior de navegacion 

      body: Center(
      child : Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget>[
          Text("Hola"
          ),
          ElevatedButton( //La palabra RaisedBottun() quedo obsoleta 
            child: Text("Ir a otra pagina "),
            onPressed: ()=>{
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=>Pagina02())
                )
            }
            )
        ],
      ), 
    ),
    );
  }
}