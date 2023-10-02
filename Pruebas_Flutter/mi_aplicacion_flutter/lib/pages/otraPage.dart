import 'package:flutter/material.dart';

class OtraPage extends StatefulWidget {
  const OtraPage({super.key});

  @override
  State<OtraPage> createState() => _OtraPageState();
}

class _OtraPageState extends State<OtraPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Otra pagina")),
          MaterialButton(
            color: Colors.amberAccent,
            child: Text("Cambio de pagina "),
            onPressed: (){
              Navigator.pushNamed(context, "/servicios");
            }
          )
        ],
      ),
    );
  }
}