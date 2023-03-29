import 'package:babb3/paraktikum4/percobaan2/provider/done_tourism_provider.dart';
import 'package:flutter/material.dart';
import 'package:babb3/paraktikum4/percobaan2/main_screen.dart';
import 'package:provider/provider.dart';

class Percobaan2 extends StatefulWidget {
  const Percobaan2({Key? key}) : super(key: key);

  @override
  State<Percobaan2> createState() => _Percobaan2State();
}

class _Percobaan2State extends State<Percobaan2> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DoneTourismProvider(),
      child: MaterialApp(
      title: 'Contacts',
      theme: ThemeData(),
      home: MainScreen(),
      ),
    );
  }
}