import 'package:flutter/material.dart';

class Pagina02 extends StatelessWidget {
  const Pagina02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina 02"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text("Terminos y condiciones", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),SizedBox(height: 15,),
            Text("Para usar esta aplicacion debe aceptar los terminos y condiciones Para usar esta aplicacion debe aceptar los terminos y condiciones Para usar esta aplicacion debe aceptar los terminos y condiciones", style: TextStyle(fontSize: 20), textAlign: TextAlign.justify,),SizedBox(height: 15,),
            Text("Para usar esta aplicacion debe aceptar los terminos y condiciones Para usar esta aplicacion debe aceptar los terminos y condiciones Para usar esta aplicacion debe aceptar los terminos y condiciones" , style: TextStyle(fontSize: 20), textAlign: TextAlign.justify,),SizedBox(height: 15,),
            Text("Para usar esta aplicacion debe aceptar los terminos y condiciones Para usar esta aplicacion debe aceptar los terminos y condiciones Para usar esta aplicacion debe aceptar los terminos y condiciones", style: TextStyle(fontSize: 20), textAlign: TextAlign.justify,),
            SizedBox(height: 15,),
            ElevatedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Acepto todo", style: TextStyle(fontSize: 20),),
                  Icon(Icons.arrow_forward_ios)
              ]), 
              onPressed: ()=>{

                Navigator.pop(context)
              } )
          ]),
      ),
    );
  }
}