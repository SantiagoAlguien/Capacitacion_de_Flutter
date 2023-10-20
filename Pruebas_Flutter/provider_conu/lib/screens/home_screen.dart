import 'package:flutter/material.dart';
import 'package:provider_conu/pages/page1.dart';
import 'package:provider_conu/pages/page2.dart';
import 'package:provider_conu/pages/page3.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _seletionPage = 0;

  final List<Widget> _pages = <Widget>[
    const Page1(),
    const Page2(),
    const Page3(),
  ];

  @override
 Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(),
    body:_pages[_seletionPage],
    bottomNavigationBar: BottomNavigationBar(
    onTap: (int index) {
      setState(() {
        _seletionPage = index;
      });
    },
    items: const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'PAGE 1',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.school_rounded),
      label: 'PAGE 2',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.business),
      label: 'PAGE 3',
    ),
    ],
  ));
 }
}