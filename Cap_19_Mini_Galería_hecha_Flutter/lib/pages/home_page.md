import 'package:crud_firebase/data/images_data.dart';
import 'package:crud_firebase/pages/image_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Nuestra Galeria")),
      body: GridView.extent( 
        padding: EdgeInsets.all(4),
        mainAxisSpacing: 5.0,
        crossAxisSpacing: 5.0,
        maxCrossAxisExtent: 150.0,
        children: _imagesList,
      )
    );
  }

  List<Widget> get _imagesList {
    
    List<Widget> _listIameges = [];

    for(var image in images){
     _listIameges.add(GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> ImagePage(url: image)));
      },
      child: Hero(
        tag: image,
        child: Image.network(image, fit:BoxFit.cover,))));
    } 

    return _listIameges;

  }
}  