import 'package:babb3/paraktikum4/percobaan2/done_tourism_list.dart';
import 'package:babb3/paraktikum4/percobaan2/tourism_list.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wisata Surabaya'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.done_outline),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const DoneTourismList();
                  })
              );
            },
          )
        ],
      ),
      body: TourismList(),
    );
  }
}