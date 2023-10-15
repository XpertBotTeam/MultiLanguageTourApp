import 'package:flutter/material.dart';
import '../Historic Places/baalbek.dart';
import '../Historic Places/jeita_grotto.dart';
import '../Historic Places/sidon.dart';
class HistoricPlacesScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
  title: Text('Historic PLaces'),
    backgroundColor: Colors.yellow[700],
  centerTitle: true,


  ),
  body: Container(
  color: Colors.yellow[700], // Set the background color for NightClubsScreen
  child: Center(
  child: ListView(
  children: <Widget>[
  Divider(),
  PlaceItem(
  place: Place('Jeita Grotto', 'assets/Historic/Jeita1.jpg'),
  onTap: () {

  Navigator.push(context, MaterialPageRoute(builder: (context) => JeitaGrotto()));
  },
  ),
  Divider(
  height: 20.0,
  thickness: 1.5,
    color: Colors.yellow[700],
  ),
  PlaceItem(
  place: Place('Sidon Sea Castle', 'assets/Historic/Sidon1.jpg'),
  onTap: () {

  Navigator.push(context, MaterialPageRoute(builder: (context) => Sidon()));
  },
  ),
  Divider(
  height: 20.0,
  thickness: 1.5,
    color: Colors.yellow[700],
  ),
  PlaceItem(
  place: Place('Baalbek temples', 'assets/Historic/baalbek1.jpg'),
  onTap: () {

  Navigator.push(context, MaterialPageRoute(builder: (context) => Baalbek()));

  },
  ),
  Divider(
  height: 20.0,
  thickness: 1.5,
    color: Colors.yellow[700],
  ),
  PlaceItem(
  place: Place('Place 4', 'assets/'),
  onTap: () {

  // Navigator.push(context, MaterialPageRoute(builder: (context) => BarsScreen()));
  },
  ),
  Divider(
  height: 20.0,
  thickness: 1.5,
    color: Colors.yellow[700],
  ),
  ],
  ),
  ),
  ),
  );
  }
  }

  class PlaceItem extends StatelessWidget {
  final Place place;
  final Function()? onTap;

  PlaceItem({required this.place, this.onTap});

  @override
  Widget build(BuildContext context) {
  return InkWell(
  onTap: onTap,
  child: Container(
  color: Colors.yellow[400], // Set the background color for PlaceItem
  child: Padding(
  padding: const EdgeInsets.all(16.0),
  child: Row(
  children: [
  CircleAvatar(
  radius: 30.0,
  backgroundImage: AssetImage(place.imageUrl),
  ),
  SizedBox(width: 16.0),
  Text(
  place.name,
  style: TextStyle(
  fontSize: 20.0,
  ),
  ),
  ],
  ),
  ),
  ),
  );
  }
  }


  class Place {
  final String name;
  final String imageUrl;

  Place(this.name, this.imageUrl);
  }

