// ignore_for_file: empty_constructor_bodies
import 'package:flutter/material.dart';
import 'package:provider_conu/src/pages/homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      title: 'Manejo de estado con Provider',
      home: HomePage(),
    );
  }
}
