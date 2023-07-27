import 'package:flutter/material.dart';

class PagesStateles extends StatelessWidget {
  final String texto;
  const PagesStateles(this.texto, {Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateless page"),
      ),
      body: Center(
        child: Text(texto),
      ),
    );
  }
}