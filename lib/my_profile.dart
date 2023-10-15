import 'package:flutter/material.dart';
import 'categories.dart';
import 'home.dart';

class MyProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Profile',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontStyle: FontStyle.italic,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: ProfileScreen(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushReplacementNamed(context, '/home');
              break;
            case 1:
              Navigator.pushReplacementNamed(context, '/categories');
              break;
            case 2:
            // MyProfileScreen is already on this page, no action needed.
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

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[300],
      body: Padding(
        padding: EdgeInsets.only(
          top: 0.0,
          right: 30.0,
          bottom: 35.0,
          left: 30.0,
        ),
        child: Column(
          children: [
            const SizedBox(height: 5),
            CircleAvatar(
              radius: 95,
              backgroundImage: AssetImage('assets/image1.jpg'),
            ),
            const SizedBox(height: 20),
            itemProfile('Name', 'Anthony Khoury', Icons.person),
            const SizedBox(height: 10),
            itemProfile('Phone', '76123123', Icons.phone),
            const SizedBox(height: 10),
            itemProfile('Address', 'Beirut , Lebanon', Icons.map),
            const SizedBox(height: 10),
            itemProfile('Email', 'test@gmail.com', Icons.mail),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(15),
                  backgroundColor: Colors.yellow[700]
                ),
                child: const Text('Edit Profile'),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.purple,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 5),
            color: Colors.deepOrange.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 10,
          ),
        ],
      ),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(color: Colors.yellow),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(color: Colors.white),
        ),
        leading: Icon(
          iconData,
          color: Colors.yellow,
        ),
        trailing: Icon(
          Icons.arrow_forward,
          color: Colors.yellow.shade400,
        ),

      ),
    );
  }
}
