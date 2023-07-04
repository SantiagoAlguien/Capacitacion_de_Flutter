import 'package:flutter/material.dart';
void main() => runApp( MiApp());
class MiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: "Material app",
        home: Scaffold(
          appBar: AppBar(
            title: Text("Material app Bar"),
          ),
          body:Center(
            child: Container(
              child: Text("hello world"),
          ),)
        ),
      ),
    );
  }
}