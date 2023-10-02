import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sistema de rutas"),),
      body: Center(child: MaterialButton(
          color: Colors.amber,
          child: Text("Cambiar de pagina"),
          onPressed: () {
            Navigator.pushNamed(context, "/otraPage");
          },
        ),
      ),
    );
  }
}