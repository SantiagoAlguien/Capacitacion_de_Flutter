import 'package:flutter/material.dart';

class Bike extends StatelessWidget {
  const Bike({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Biked desde archivo separado',style: TextStyle(color: Colors.black),),
    );
  }
}