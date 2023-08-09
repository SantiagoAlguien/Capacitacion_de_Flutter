import 'package:flutter/material.dart';

void main() => runApp( MiApp());

class MiApp extends StatelessWidget {
  
Empresa _facebook = new Empresa (
  "Facebook", "Marck", 50000
);

Text _nombre = new Text("Hernesto",style: TextStyle(fontSize: 40),);

MiApp({super.key});
@override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: "Clases",
        home: Scaffold(
          appBar: AppBar(
            title: Text("Clases"),
          ),
          body: Center(
            child: Text(
              _facebook.ingresoAnu.toString()
            )
            
          ),
        ),
      ),
    );
  }
}

class Empresa {
  String? nombre;
  String? propietario;
  int? ingresoAnu;

   Empresa(String? nom, String? pro, int? ing){
    nombre = nom;
    propietario = pro;
    ingresoAnu = ing;

   }
}