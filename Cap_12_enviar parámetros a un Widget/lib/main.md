import 'package:flutter/material.dart';
import 'package:helllo_word/pageSateless.dart';
import 'package:helllo_word/pagesStatefull.dart';


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

  @override
  Widget build(BuildContext context) {

    TextEditingController _textocontroler = TextEditingController(text: "");

    return Scaffold(
      appBar: AppBar(title: const Text("enviar parámetros a un Widget"),
      ), //Barra superior de navegacion 
      body:Column(
        children: [
          Container(padding: EdgeInsets.all(20), 
          child: TextField(
            controller: _textocontroler,
            decoration: InputDecoration( 
              border: InputBorder.none,
              fillColor: Colors.grey,
              filled: true,
              hintText: "Ingresa informacion",
             ),
          ),),
          MaterialButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> PagesStateles(_textocontroler.text)));
          },
          child: Text("Enviar a Stataless"),
          ),
          MaterialButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> MyWidget(_textocontroler.text)));
          },
          child: Text("Enviar a Statefull")
          )
        ],
      )
    );
  }
 }