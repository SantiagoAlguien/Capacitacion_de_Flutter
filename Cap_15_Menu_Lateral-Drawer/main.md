import 'package:flutter/material.dart';

void main() => runApp( const MiApp());
class MiApp extends StatefulWidget {
  const MiApp({super.key});
 
  @override
  // ignore: library_private_types_in_public_api
  _MiAppState createState() => _MiAppState();
}

class _MiAppState extends State<MiApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // metodo para eliminar la palabra debug arriba
      title: "Pruebas flutter",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Menu lateral- Drawer"),
        ),
        body: Center(
          child: const Text("Hola mundo"),
        ),
        drawer: Drawer(
          child: Container(
            color: const Color.fromARGB(255, 255, 255, 255) ,
            child: Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.all(50),
                  child: Image.network("https://cdn.create.vista.com/api/media/small/389574928/stock-photo-letter-logo-design-initial-letter-linked-circle-uppercase-monogram-logo"),
                ),
                Text("Santiago Lopez", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.all(20),
                  color:  const Color.fromARGB(255, 85, 85, 85),
                  width: double.infinity,
                  child: Text("Inicio"),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  padding: const EdgeInsets.all(20),
                  color:  const Color.fromARGB(255, 85, 85, 85),
                  width: double.infinity,
                  child: Text("Inicio"),
                ),
                Expanded(child: Container()),
                Container(
                  padding: const EdgeInsets.all(20),
                  color:  Color.fromARGB(255, 0, 0, 0),
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text("Sing out", style: TextStyle(color: Colors.white),),
                ),
              ],
            ),
          ),
        ),
        ),
      );
    
  }
}