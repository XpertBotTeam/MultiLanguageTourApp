import 'package:flutter/material.dart';
import '../NightClubs/ahm_club.dart';
import '../NightClubs/raw.dart';
import '../NightClubs/spine.dart';


class NightClubsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Night Clubs'),
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
                place: Place('Ahm Club', 'assets/NightClubs/ahm1.png'),
                onTap: () {

                  Navigator.push(context, MaterialPageRoute(builder: (context) => AHMclub()));
                },
              ),
              Divider(
                height: 20.0,
                thickness: 1.5,
                color: Colors.yellow[700],
              ),
              PlaceItem(
                place: Place('Raw', 'assets/NightClubs/raw1.jpg'),
                onTap: () {

                  Navigator.push(context, MaterialPageRoute(builder: (context) => RAWclub()));
                },
              ),
              Divider(
                height: 20.0,
                thickness: 1.5,
                color: Colors.yellow[700],
              ),
              PlaceItem(
                place: Place('Spine', 'assets/NightClubs/Spine1.jpg'),
                onTap: () {

                  Navigator.push(context, MaterialPageRoute(builder: (context) => SPINEclub()));
                },
              ),
              Divider(
                height: 20.0,
                thickness: 1.5,
                color: Colors.yellow[700],
              ),
              PlaceItem(
                place: Place('Night Club 4', 'assets/NightClubs/raw2.jpg'),
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
        color: Colors.yellow[400],
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

