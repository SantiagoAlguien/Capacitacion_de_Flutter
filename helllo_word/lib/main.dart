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
        title: "Consumiendo un API REST ( Future / http )",
        home: Scaffold(
          appBar: AppBar(
            title: Text("Consumiendo un API REST ( Future / http )"),
          ),
          body:Center(child: Text("Hola"),)
        ),
      ),
    );
  }
}