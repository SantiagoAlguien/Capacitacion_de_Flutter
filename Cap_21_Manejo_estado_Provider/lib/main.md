// ignore_for_file: empty_constructor_bodies

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_conu/providers/counter_provider.dart';
import 'package:provider_conu/screens/home_screen.dart';

void main(){
  runApp(
    ChangeNotifierProvider(
      create: (_) => CounterProvider(),
      child: MyApp()
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch:  Colors.deepOrange
      ),
      title: 'Manejo de estado con Proviner',
      home: HomeScreen(),
    );
  }
}


