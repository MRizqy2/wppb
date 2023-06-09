import 'package:babb3/paraktikum4/model/tourism_place.dart';
import 'package:flutter/material.dart';

class DoneTourismList extends StatelessWidget{
  final List<TourismPlace> doneTourismPlaceList;
  const DoneTourismList({
    Key? key,
    required this.doneTourismPlaceList
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wisata Telah Dikunjungi'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index){
          final TourismPlace place = doneTourismPlaceList[index];
          return Card(
            color: Colors.white60,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget> [
                Text(
                  place.name,
                  style: const TextStyle(fontSize: 16.0),
                ),
                const Icon(Icons.done_all_outlined)
              ],
            ),
          );
        },
        itemCount: doneTourismPlaceList.length,
      ),
    );
  }
}