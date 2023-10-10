import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({super.key, required this.url});

  final String url;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back_ios, color: Colors.white,)),
            Hero(
              tag: url,
              child: Image.network(url)),
            Divider()
          ],
        ),
      ),
    );
  }
}