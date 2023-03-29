import 'package:babb3/part2/model/tourism_place.dart';
import 'package:flutter/material.dart';

class Tugas extends StatelessWidget {
  const Tugas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wisata Surabaya'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index){
          final TourismPlace place = tourismPlaceList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(place: place);
              }));
            },
            child: listItem(place),
          );
        },
        itemCount: tourismPlaceList.length,
      ),
    );
  }

  Widget listItem(TourismPlace place){
    return Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
          Expanded(
            flex: 1,
            child: Image.asset(
              place.imageAsset,
              width: 500.0,
              height: 210.0,
            ),
          ),
          Expanded(
            flex: 2,
            child:Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget> [
                  Text(
                    place.name,
                    style: const TextStyle(fontSize: 16.0),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(place.location),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.place}) : super(key: key);

  final TourismPlace place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget> [
              Image.asset(
                place.imageAsset,
                width: 500.0,
                height: 210.0,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget> [
                        Icon(Icons.calendar_today),
                        Text(place.jamBuka),
                      ],
                    ),
                    Column(
                      children: <Widget> [
                        Icon(Icons.access_time),
                        Text(place.time),
                      ],
                    ),
                    Column(
                      children: <Widget> [
                        Icon(Icons.monetization_on_outlined),
                        Text(place.ticket),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 16.0),
                child: Text(
                  place.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'Lobster',
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 16.0),
                child: Text(
                  place.description,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 15.0,
                    fontFamily: 'Oxygen',
                  ),
                ),
              ),
              Container(
                height: 150,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: place.imageList.map((image){
                      return Container(
                        child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(image),
                            )
                        ),
                      );
                    }).toList()
                ),
              ),
            ],
          ),
          ),
        )
    );
  }
}