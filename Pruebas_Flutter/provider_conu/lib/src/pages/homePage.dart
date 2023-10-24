import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider_conu/src/pages/tabs/Car.dart';
import 'package:provider_conu/src/pages/tabs/bike.dart';
import 'package:provider_conu/src/pages/tabs/user.dart';


class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

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
            Tab(
              icon: Icon(Icons.directions_car),
            ),
            Tab(
              icon: Icon(Icons.verified_user),
            ),
            Tab(
              icon: Icon(Icons.directions_bike),
            )
          ]
        ),
      ),
      body: const TabBarView(
        children: [
            Car(),
            User(),
            Bike()
          ],
        )
      ),
    );
  }
}