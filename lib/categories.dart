import 'package:flutter/material.dart';
import 'package:where_to/home.dart';
import 'Places/bars.dart';
import 'Places/beaches.dart';
import 'Places/historic_places.dart';
import 'Places/night_clubs.dart';
import 'Places/restaurants.dart';

class CategoriesScreen extends StatefulWidget {
  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Categories',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontStyle: FontStyle.italic,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        color: Colors.yellow[700],
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                InkWell(
                  onTap: () {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                  child: Container(
                    color: Colors.purple,

                    padding: EdgeInsets.only(top: 5, bottom: 5),
                    child:
                    Column(

                      children: [
                        ListTile(
                          title: Text(
                            'Across Lebanon',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          trailing: Icon(
                            isExpanded
                                ? Icons.expand_less
                                : Icons.expand_more,
                            color: Colors.white,
                          ),
                        ),
                        if (isExpanded)
                          ListTile(
                            title: Text(
                              'Choose Specifically',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.yellow,
                              ),
                            ),
                            onTap: () {

                              Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                            },
                          ),
                      ],
                    ),
                  ),
                ),
               Divider(),
                PlaceItem(
                  place: Place('Night Clubs', 'assets/NightClubs.jpg'),
                  onTap: () {

                    Navigator.push(context, MaterialPageRoute(builder: (context) => NightClubsScreen()));
                  },
                ),
                Divider(
                  height: 20.0,
                  thickness: 1.5,
                  color: Colors.yellow[700],
                ),
                PlaceItem(
                  place: Place('Historic Places', 'assets/Historic/Sidon2.jpg'),
                  onTap: () {

                    Navigator.push(context, MaterialPageRoute(builder: (context) => HistoricPlacesScreen()));
                  },
                ),
                Divider(
                  height: 20.0,
                  thickness: 1.5,
                  color: Colors.yellow[700],
                ),
                PlaceItem(
                  place: Place('Bars', 'assets/Bars.jpg'),
                  onTap: () {

                    Navigator.push(context, MaterialPageRoute(builder: (context) => BarsScreen()));
                  },
                ),
                Divider(
                  height: 20.0,
                  thickness: 1.5,
                  color: Colors.yellow[700],
                ),
                PlaceItem(
                  place: Place('Beaches', 'assets/Beaches.jpg'),
                  onTap: () {

                    Navigator.push(context, MaterialPageRoute(builder: (context) => BeachesScreen()));
                  },
                ),
                Divider(
                  height: 20.0,
                  thickness: 1.5,
                  color: Colors.yellow[700],
                ),

                PlaceItem(
                  place: Place('Restaurants', 'assets/Restaurants.jpeg'),
                  onTap: () {

                    Navigator.push(context, MaterialPageRoute(builder: (context) => RestaurantsScreen()));
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
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushReplacementNamed(context, '/home');
              break;
            case 1:
              break;
            case 2:
              Navigator.pushReplacementNamed(context, '/my_profile');
              break;
          }
        },
        unselectedItemColor: Colors.purple,
        selectedItemColor: Colors.blue,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
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
