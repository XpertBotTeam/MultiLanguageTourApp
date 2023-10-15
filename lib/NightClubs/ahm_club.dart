import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class AHMclub extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AHM Club'),
      ),
      body: Container(
        color: Colors.yellow[300],
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 1. Image
              Image.asset(
                'assets/NightClubs/Ahm2.jpg',
                width: double.infinity,
                height: 200.0,
                fit: BoxFit.cover,
              ),

              // Divider Line



              // 2. Link
              Container(
                color: Colors.yellow[700],
                padding: EdgeInsets.all(10.0),
                child: GestureDetector(
                  onTap: () async {

                    final url = Uri.parse('https://factory-people.com/AHM');

                    await launchUrl(url);
                    },

                  child: Text(
                    'Check their Website',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),

                ),
              ),


              // Divider Line
              Container(
                margin: EdgeInsets.symmetric(vertical: 5.0),
                height: 1.0,
                color: Colors.black,
              ),

              // 3. Description
              // 3. Description with Title
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "AHM Club, Lebanon",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 12.0),
                    Text(
                      "Opening Hours: 10:00 PM- 7:00 AM \n\nThursday to Sunday",

                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.deepPurple,
                        backgroundColor: Colors.yellow,
                      ),
                    ),
                    SizedBox(height: 18.0),  // Add some space between the title and the description
                    Text(

                          "\nAHM Club, located in the heart of Lebanon, is a vibrant and exclusive social club that offers a unique experience for its members and visitors. Nestled in a beautiful setting, AHM Club provides a welcoming environment for relaxation and socialization. Here's what you can expect when you visit:\n\n"
                          "Elegance and Style: AHM Club is known for its elegant and stylish design. The club's architecture and interior create a luxurious ambiance that's perfect for those looking to enjoy a refined social setting.\n\n"
                          "Cuisine: The club features a diverse range of dining options, from gourmet cuisine to casual fare. Whether you're in the mood for a gourmet meal or a quick snack, AHM Club has something to satisfy your palate.\n\n"
                          "Entertainment: AHM Club hosts a variety of events and entertainment options. From live music and dance floors to themed parties and cultural events, there's always something exciting happening at the club.\n\n"
                          "Membership: AHM Club offers exclusive membership options, providing access to a range of amenities and services. Members enjoy priority reservations, special discounts, and access to members-only events.\n\n"
                          "Relaxation: For those seeking relaxation, AHM Club provides comfortable lounges, a spa, and wellness facilities. It's an ideal place to unwind and rejuvenate.\n\n"
                          "Location: AHM Club's location is ideal for enjoying Lebanon's natural beauty. It's often set against picturesque landscapes, allowing guests to savor breathtaking views.\n\n"
                          "Community: The club fosters a sense of community and camaraderie. It's a place where people can connect, socialize, and build lasting friendships.\n\n",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ],
                ),
              ),

              // Divider Line
              Container(
                margin: EdgeInsets.symmetric(vertical: 1.0),
                height: 1.0,
                color: Colors.black,
              ),

              Container(
                  color: Colors.yellow[700],
                  padding: EdgeInsets.all(20.0),
                  alignment: Alignment.center,
                  child: Text(
                    'Visit Now!',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  )
              ),
              // 4. Map (WebView)
              Container(
                width: double.infinity,
                height: 300.0,
                child: WebView(
                  initialUrl:
                  'https://www.google.com/maps?q=AHM Club+Club,Lebanon',
                  javascriptMode: JavascriptMode.unrestricted,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
