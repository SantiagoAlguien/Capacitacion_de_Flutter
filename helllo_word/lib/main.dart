import 'package:flutter/material.dart'; 

void main() => runApp( MiApp());
class MiApp extends StatefulWidget { 
  @override
  _MiAppState createState() => _MiAppState();
}

class _MiAppState extends State<MiApp> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: "Pruebas flutter",
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Cap 8 Bottom Navigation Bar"),
          ),
          body: Center(child: Text("Hola"),)
        ),
      ),
    );
  }
}