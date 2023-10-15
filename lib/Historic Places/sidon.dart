import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Sidon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sidon Sea Castle'),
      ),
      body: Container(
        color: Colors.yellow[300], // Yellow background color
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 1. Image
              Image.asset(
                'assets/Historic/Sidon2.jpg', // Replace with the actual image path
                width: double.infinity,
                height: 200.0, // Adjust the image height as needed
                fit: BoxFit.cover, // Adjust the image fit as needed
              ),

              // Divider Line

                   // 2. Link
            Container(
            color: Colors.yellow[700],
                padding: EdgeInsets.all(10.0),
            child: GestureDetector(
              onTap: () async {

                final url = Uri.parse('https://sidon.com');

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

              // 3. Description with Title
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sidon Sea Castle, Lebanon",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 12.0),
                    Text(
                      "Opening Hours: 9:00 AM - 5:00 PM\n\nTuesday To Sunday",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.deepPurple,
                        backgroundColor: Colors.yellow,
                      ),
                    ),
                    SizedBox(height: 18.0),
                    Text(
                      "The Sidon Sea Castle is a historic fortress located on the coast of Sidon, Lebanon. This medieval castle, built by the Crusaders, offers stunning views of the Mediterranean Sea. Visitors can explore its ancient stone walls and towers, providing a glimpse into Lebanon's rich history.\n\n"
                          "The castle is situated on a small island connected to the mainland by a narrow causeway. It's a great place to take a leisurely walk and enjoy the sea breeze. The Sidon Sea Castle is not only a historical site but also a picturesque destination for travelers.\n\n"
                          "Explore the castle's unique architecture and enjoy the scenic surroundings as you take a step back in time. It's a must-visit location for history enthusiasts and those who appreciate beautiful coastal landscapes.",
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

                            // Yellow Box
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
                              ),
                            ),

                             // Map (WebView)
                            Container(
                              width: double.infinity,
                              height: 300.0, // Adjust the map height as needed
                              child: WebView(
                                initialUrl: 'https://www.google.com/maps?q=Sidon+Sea+Castle,Lebanon', // Replace with the Google Maps URL
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
