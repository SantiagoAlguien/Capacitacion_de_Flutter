import 'package:flutter/material.dart';

import 'Pages/Home.md';
import 'Pages/PaginaUsers.md';

void main() => runApp( MiApp());
class MiApp extends StatefulWidget { 
  @override
  _MiAppState createState() => _MiAppState();
}

class _MiAppState extends State<MiApp> {

  List<Widget> _Paginas = [
    PaginaHome(),
    PaginaUser()
  ];

  int _paginaActual = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        debugShowCheckedModeBanner: false, // metodo para eliminar la palabra debug arriba
        title: "Pruebas flutter",
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Cap 8 Bottom Navigation Bar"),
          ),
          body: _Paginas[_paginaActual],
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index){
                setState(() {
                  _paginaActual = index;
                });
            },
            currentIndex:_paginaActual,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "home"),
              BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle), label: "Users")
            ],
          ),
        ),
      ),
    );
  }
}