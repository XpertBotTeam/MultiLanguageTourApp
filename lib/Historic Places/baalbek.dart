import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Baalbek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Baalbek Temples'),
      ),
      body: Container(
        color: Colors.yellow[300], // Yellow background color
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 1. Image
              Image.asset(
                'assets/Historic/baalbek2.jpg', // Replace with the actual image path
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

                    final url = Uri.parse('https://baalbek.com');

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
                      "Baalbek Temples, Lebanon",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 12.0),
                    Text(
                      "Opening Hours: 8:00 AM - 6:00 PM\n\nWednesday To Sunday",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.deepPurple,
                        backgroundColor: Colors.yellow,
                      ),
                    ),
                    SizedBox(height: 18.0),
                    Text(
                      "Baalbek Temples, also known as Heliopolis, is a UNESCO World Heritage site in Lebanon. It is famous for its ancient Roman temple complex, which includes the Temple of Bacchus, the Temple of Venus, and the Temple of Jupiter. These temples are among the largest and best-preserved Roman temples in the world.\n\n"
                          "Visitors to Baalbek Temples can explore the grandeur of Roman architecture, with massive stone columns and intricate carvings. The site has a rich history and is a testament to the ancient civilization that once thrived in the region.\n\n"
                          "The temples host cultural events, including the Baalbek International Festival, which features music, dance, and theater performances. It's a must-visit destination for history enthusiasts and anyone interested in the ancient world.",
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
                )
              ),
              // 4. Map (WebView)
              Container(
                width: double.infinity,
                height: 300.0, // Adjust the map height as needed
                child: WebView(
                  initialUrl: 'https://www.google.com/maps?q=Baalbek+Temples,Lebanon', // Replace with the Google Maps URL
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
