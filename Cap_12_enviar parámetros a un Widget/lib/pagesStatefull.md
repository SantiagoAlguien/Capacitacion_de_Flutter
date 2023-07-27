import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  
  final String texto;
  MyWidget(this.texto, {Key? key}):super(key: key);


  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: Text("StatefulWidget"),
      ),
      body: Center(
        child: Text(widget.texto),
      ),
    );
  }
}