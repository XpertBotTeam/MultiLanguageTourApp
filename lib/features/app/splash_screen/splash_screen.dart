import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  final Widget? child;
  const SplashScreen({super.key, this.child});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 3), (){
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => widget.child!), (route) => false);
    }
    );
    super.initState();
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/Welcome.jpg"), // Replace with the actual path to your image
            fit: BoxFit.cover, // Cover the entire container
          ),
        ),
          child: Center(
            child: Container(
              color: Colors.purple, // Set the background color for the container
              padding: EdgeInsets.all(16), // Adjust padding as needed
              child: Text(
                "Where To!",
                style: TextStyle(
                  color: Colors.yellow,
                  fontWeight: FontWeight.bold,
                  fontSize: 56, // Adjust the font size as needed
                ),
              ),
            ),
          )

      ),
    );
  }
}




