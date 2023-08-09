import 'dart:convert'; //importando conversor de dart 

import 'package:flutter/material.dart'; 
import 'package:helllo_word/models/Gif.dart'; //importando el objecto de la clase GIF.dart
import 'package:http/http.dart' as http; //peticion http flutter

void main() => runApp( MiApp());
class MiApp extends StatefulWidget { 
  @override
  _MiAppState createState() => _MiAppState();
}

class _MiAppState extends State<MiApp> {

  Future<List<Gif>>? _listadoGifs; //lista de future de la lista de GIFS

  Future<List<Gif>> _getGifs() async {
    final response = await http.get(Uri.parse("https://api.giphy.com/v1/gifs/trending?api_key=xvLhrjAxuzR0R0joya1TXZFGUGzBYKF3&limit=10&offset=0&rating=g&bundle=messaging_non_clips")); //Para llamar la url nesecitamos una clase Uri que requiere un parse dentro de las ()

    List<Gif> gifs = [];

    if(response.statusCode == 200){
      String body = utf8.decode(response.bodyBytes); //Esto es un casteo del json a un string 
      final jsonData = jsonDecode(body); // 

      for (var item in jsonData["data"]) { //Recorrido de la lista por medio de un for a la API
        gifs.add(
          Gif(item["title"], item["images"]["original"]["url"])); // Es la estructura del json donde hacemos la peticion
      }
      
      return gifs;

    }else{
      throw Exception("Fallo la conexion");
    }
  }

  @override
  void initState() { //Es una funcion que se ejecuta cuando se abre una ventana 
    super.initState();
    _listadoGifs = _getGifs();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: "Consumiendo un API REST ( Future / http )",
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Consumiendo un API REST ( Future / http )"),
          ),
          body: FutureBuilder(
            future: _getGifs(),
            builder: (context,snapshot ){
              if (snapshot.hasData) {
                return GridView.count(
                  crossAxisCount: 2,
                  children: _listGifs(snapshot.data),
                );
              }else if (snapshot.hasError){
                print(snapshot.hasError);
                return Text("Error");
              }
              return Center(
                child: CircularProgressIndicator(),
              );
            },
          )
        ),
      ),
    );
  }

List<Widget> _listGifs(data){
  List<Widget> gifs = [];

for (var gif in data) {
  print(gif.url);
  gifs.add(Card(child: Column(
    children: [
      Expanded(child: Image.network(gif.url??"https://upload.wikimedia.org/wikipedia/commons/3/3a/Cat03.jpg",fit: BoxFit.fill)), //En caso de ser null mandar un string vacio asi ??""
      
    ],
  ))
  );
  }
  return gifs;
  }
}