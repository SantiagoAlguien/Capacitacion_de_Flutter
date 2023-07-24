import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Carrusel de imágenes"),
      ), //Barra superior de navegacion 
      body:Container(child: _wiper(),)
    );
  }
  Widget _wiper (){
    List<String> imagenes = [
      "https://cdn.pixabay.com/photo/2017/08/30/12/45/girl-2696947_1280.jpg",
      "https://cdn.pixabay.com/photo/2017/08/30/12/45/girl-2696947_1280.jpg",
      "https://cdn.pixabay.com/photo/2017/08/30/12/45/girl-2696947_1280.jpg",
      "https://cdn.pixabay.com/photo/2017/08/30/12/45/girl-2696947_1280.jpg"
    ];
  return Container(
    width: 500,
    height: 600,
    child: Swiper(
        itemBuilder: (BuildContext context,int index){
          return new Image.network(imagenes[index],fit: BoxFit.cover,);
        },
        itemCount: imagenes.length,
        pagination: new SwiperPagination(),
        control: new SwiperControl(),
      ),
    );
  }
}