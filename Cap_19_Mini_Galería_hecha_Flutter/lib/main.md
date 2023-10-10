import 'package:crud_firebase/pages/home_page.dart';
import 'package:flutter/material.dart';

//importaciones de firebase

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key});
  
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Material App",
      home: HomePage(),
    );
  }
}