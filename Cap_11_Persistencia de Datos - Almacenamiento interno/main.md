import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(const MiApp());

class MiApp extends StatefulWidget {
  const MiApp({super.key});

  @override
  State<MiApp> createState() => _MiAppState();
}

class _MiAppState extends State<MiApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Mi primera App",
      home: Inicio(), //Este constructor es el que llama a la class Inicio extends StatefulWidget que inicia todo el Scafold
    );
  }
}
class Inicio extends StatefulWidget {
  const Inicio({super.key});
  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
int value = 0;

Future<void> _chageValeo () async {

SharedPreferences prefs = await SharedPreferences.getInstance();

  setState(() {
    value ++;
    prefs.setInt("value", value);
  });
}

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _cargarPreferencias();
  }

  _cargarPreferencias() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      value = prefs.getInt("value")! ?? 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Persistencia de Datos - Almacenamiento interno"),
      ), //Barra superior de navegacion 
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container( 
              child: Text(value.toString(), style: TextStyle(fontSize: 30),),),
            MaterialButton(onPressed: _chageValeo, child: Text("Aumentar valor"),)
          ],
        ))
    );
  }

 }