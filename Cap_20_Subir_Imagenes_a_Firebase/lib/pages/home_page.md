import 'dart:io';

import 'package:crud_firebase/services/select_images.dart';
import 'package:crud_firebase/services/upload_image.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  File? image_to_upload;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Nuestra Galeria")),
      body: Column(
        children: [
          image_to_upload != null? Image.file(image_to_upload!): Container(
            margin: EdgeInsets.all(10),
            height: 200,
            width: double.infinity,
            color: Colors.red,
          ),
          MaterialButton(
            color: Colors.blue,
            onPressed: () async{
              final imagen =await getImage();
              setState(() {
                image_to_upload = File(imagen!.path);
              });
            },
            child: const Text("Selecionar imagen"),
          ),
          MaterialButton(
            color: Colors.blue,
            onPressed: () async{
              if (image_to_upload == null) {
                return;
              }
              final uploaded = await uploadImage(image_to_upload!);

              if(uploaded != null){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Se cargo la imagen correctamente"),));
              }else{
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("No se cargo la imagen"),));
              }
            },
            child: const Text("Subir imagen"),
            
          ),
        ],
      )
    );
  }
}