import 'package:flutter/material.dart';

// Suponiendo que 'Badge' viene de un paquete de terceros, necesitarás importarlo.
// import 'package:tu_paquete/badge.dart'; // Añade la ruta correcta del paquete.

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text("Material app bar"),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.verified_user)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: Center(
          // Suponiendo que Badge es un widget válido
          child: Badge(
            child: Badge(label: Text("3"), child: Text("hola mundo")),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}

