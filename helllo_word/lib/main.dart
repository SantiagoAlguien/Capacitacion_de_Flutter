import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:helllo_word/models/Gif.dart';
import 'package:http/http.dart' as http;

void main() => runApp( MiApp());
class MiApp extends StatefulWidget {
  @override
  _MiAppState createState() => _MiAppState();
}

class _MiAppState extends State<MiApp> {

  Future<List<Gif>>? _listadoGifs;

  Future<List<Gif>> _getGifs() async {
    final response = await http.get(Uri.parse("https://api.giphy.com/v1/gifs/trending?api_key=xvLhrjAxuzR0R0joya1TXZFGUGzBYKF3&limit=10&offset=0&rating=g&bundle=messaging_non_clips")); //Para llamar la url nesecitamos una clase Uri que requiere un parse dentro de las ()

    List<Gif> gifs = [];

    if(response.statusCode == 200){
      String body = utf8.decode(response.bodyBytes);
      final jsonData = jsonDecode(body);

      for (var item in jsonData["data"]) {
        gifs.add(
          Gif(item["title"], item["images"]["downsized"]["url"]));
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
          body:Center(
            child: Container(
              child: Text("Hello word"),))
        ),
      ),
    );
  }
}