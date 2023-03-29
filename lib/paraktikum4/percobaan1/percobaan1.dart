import 'package:flutter/material.dart';
import 'package:babb3/paraktikum4/percobaan1/main_screen.dart';

class Percobaan1 extends StatefulWidget {
  const Percobaan1({Key? key}) : super(key: key);

  @override
  State<Percobaan1> createState() => _Percobaan1State();
}

class _Percobaan1State extends State<Percobaan1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts',
      theme: ThemeData(),
      home: MainScreen(),
    );
  }
}