import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class JeitaGrotto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jeita Grotto'),
      ),
      body: Container(
        color: Colors.yellow[300], // Yellow background color
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 1. Image
              Image.asset(
                'assets/Historic/Jeita2.jpg', // Replace with the actual image path
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
                    final url = Uri.parse('https://jeitagrotto.com');
                    if (await canLaunch(url.toString())) {
                      await launch(url.toString());
                    } else {
                      // Can't launch URL, there is some error
                      throw "Could not launch $url";
                    }
                  },
                  child: Text(
                    'Visit their Website',
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
                      "Jeita Grotto, Lebanon",
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
                      "Jeita Grotto is a natural wonder located in Lebanon. It is a system of two separate, but interconnected, karstic limestone caves. Visitors can explore this incredible cave system with its mesmerizing stalactites and stalagmites. The grotto's geological formations are millions of years old and have been carefully preserved.\n\n"
                          "The cave system is divided into two parts, the upper cave and the lower cave, which can be explored by foot and by boat, respectively. As you journey through the cave, you'll witness stunning formations that resemble frozen waterfalls and an underground river that reflects the cave's beauty.\n\n"
                          "Jeita Grotto offers an unforgettable experience and a unique opportunity to witness the marvels of nature. It's a must-visit destination for tourists and nature enthusiasts who appreciate the beauty of our planet.",
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
              // Container(
              //   width: double.infinity,
              //   height: 300.0, // Adjust the map height as needed
              //   child: WebView(
              //     initialUrl: 'https://www.google.com/maps?q=Jeita+Grotto,Lebanon', // Replace with the Google Maps URL
              //     javascriptMode: JavascriptMode.unrestricted,
              //   ),
              // ),


            ],
          ),
        ),
      ),
    );
  }
}
