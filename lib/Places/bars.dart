import 'package:flutter/material.dart';

class BarsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bars'),
        centerTitle: true,
        backgroundColor: Colors.yellow[700],
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            PlaceItem(
              place: Place('Bar 1', 'assets/beach.jpg'),
              onTap: () {
                // Navigate to Beaches screen
                //Navigator.push(context, MaterialPageRoute(builder: (context) => BeachesScreen()));
              },
            ),
            Divider(
              height: 20.0,
              thickness: 1.5,
              color: Colors.purple,
            ),
            PlaceItem(
              place: Place('Bar 2', 'assets/historic.jpg'),
              onTap: () {
                // Navigate to Historic Places screen
                //Navigator.push(context, MaterialPageRoute(builder: (context) => HistoricPlacesScreen()));
              },
            ),
            Divider(
              height: 20.0,
              thickness: 1.5,
              color: Colors.purple,
            ),
            PlaceItem(
              place: Place('Bar 3', 'assets/night_club.jpg'),
              onTap: () {
                // Navigate to Night Clubs screen
                //Navigator.push(context, MaterialPageRoute(builder: (context) => NightClubsScreen()));
              },
            ),
            Divider(
              height: 20.0,
              thickness: 1.5,
              color: Colors.purple,
            ),
            PlaceItem(
              place: Place('Bar 4', 'assets/bar.jpg'),
              onTap: () {
                // Navigate to Bars screen
                // You can specify the corresponding screen for Bar 4
                // Navigator.push(context, MaterialPageRoute(builder: (context) => BarsScreen()));
              },
            ),
            Divider(
              height: 20.0,
              thickness: 1.5,
              color: Colors.purple,
            ),
          ],
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
    );
  }
}

class Place {
  final String name;
  final String imageUrl;

  Place(this.name, this.imageUrl);
}
