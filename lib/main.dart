import 'package:flutter/material.dart';
import 'registarion_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Where To',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Where To'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,  // Center the title within the AppBar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
CircleAvatar(
     radius: 50.0,
  backgroundImage: AssetImage('assets/logo.png'),
),
            SizedBox( height: 20.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20.0),
                  TextField(
                    decoration: InputDecoration(labelText: 'Username'),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(labelText: 'Password'),
                  ),
                  SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () {

                    },
                    child: Text('Login'),
                  ),
                  SizedBox(height: 10.0),
                  Text('New here?'),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder:(context)=>RegistrationPage()));
                    },
                    child: Text('Register'),
                  ),
                ],
              ),
            ),
      ),
    ),
    );
  }
}