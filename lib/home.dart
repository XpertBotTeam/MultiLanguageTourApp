import 'package:flutter/material.dart';
import 'categories.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontStyle: FontStyle.italic,
          ),
        ),

        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      backgroundColor: Colors.yellow[300],
      body: Column( // Wrap the GestureDetector and SizedBox with a Column
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 40.0),
          GestureDetector(
            onTap: () {
              print('Map image clicked');
            },
            child: Container(
              width: 500.0,
              height: 500.0,
              child: Image.asset(
                'assets/map1.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 22.0),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CategoriesScreen()));
              },

              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(7.0),
                backgroundColor: Colors.purple,
                fixedSize: Size(100, 60), // Set your desired width and height
              ),
              child: const Text('View By Categories',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),

            ),

          ),

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {
          // Handle navigation within the page if needed.
          // For example, you can use a PageView to switch between content.

          // Navigate to the corresponding page based on the index
          switch (index) {
            case 0:
            // HomeScreen is already on this page, no action needed.
              break;
            case 1:
              Navigator.pushReplacementNamed(context, '/categories');
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
