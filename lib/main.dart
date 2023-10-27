import 'package:flutter/material.dart';
import 'package:where_to/features/app/splash_screen/splash_screen.dart';
import 'home.dart';
import 'categories.dart';
import 'my_profile.dart';
import 'features/user_auth/presentation/pages/sign_up_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'features/user_auth/presentation/pages/login_page.dart';
import 'package:flutter/foundation.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Future<FirebaseApp> _initializeFirebase() async {
    final FirebaseApp firebaseApp = await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyCzpK82UQ5zwIqZxGyj-7NuFm3OoQnWNoU",
          appId: "1:654739396861:web:d52916841e382f4ddbc694",
          messagingSenderId: "654739396861",
          projectId: "tour-app-128d3")

    );
    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: FutureBuilder<FirebaseApp>(
        future: _initializeFirebase(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return MyHomePage(title: 'Where To');
          } else if (snapshot.hasError) {
            return Scaffold(
              body: Center(
                child: Text('Error Initializing Firebase: ${snapshot.error}'),
              ),
            );
          } else {
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        },
      ),
      routes: {
        '/home': (context) => HomeScreen(),
        '/categories': (context) => CategoriesScreen(),
        '/my_profile': (context) => MyProfileScreen(),
        '/registration_page': (context) => SignUpPage(),
        '/login': (context) => LoginPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(title ?? ''),
      //   centerTitle: true,
      // ),
      body: SplashScreen(
        child: LoginPage(),
      ), // Include the entire login page here
    );
  }
}
