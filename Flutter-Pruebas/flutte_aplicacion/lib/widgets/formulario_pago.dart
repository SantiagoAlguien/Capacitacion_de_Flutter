import 'package:flutte_aplicacion/widgets/formulario_pago.dart';
import 'package:flutter/material.dart';

class FromCard extends StatefulWidget {
  const FromCard({super.key});

  @override
  State<FromCard> createState() => _FromCardState();
}

class _FromCardState extends State<FromCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(image: image)
      ],
    );
  }
}