import 'package:flutter/material.dart';
import 'home.dart';
import 'categories.dart';
import 'my_profile.dart';
import 'registration_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(title: 'Where To'),
        '/home': (context) => HomeScreen(),
        '/categories': (context) => CategoriesScreen(),
        '/my_profile': (context) => MyProfileScreen(),
        '/registration_page': (context) => RegistrationPage(),
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
      appBar: AppBar(
        title: Text(title ?? ''),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.yellow[300],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                radius: 120.0,
                backgroundImage: AssetImage('assets/image1.jpg'),
              ),
              const SizedBox(height: 10.0),
              LoginForm(),
              const SizedBox(height: 20.0),
              const Text('New here?', style: TextStyle(color: Colors.deepOrange)),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/registration_page');
                },
                child: const Text(
                  'Register',
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 19.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25.0),
      child: Column(
        children: <Widget>[
          const SizedBox(height: 20.0),
          TextField(
            decoration: InputDecoration(
              labelText: 'User Email',
              labelStyle: TextStyle(
                color: Colors.purple,
                fontWeight: FontWeight.bold,
              ),
              prefixIcon: Icon(Icons.email,
              color: Colors.purple,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.purple),
                borderRadius: BorderRadius.circular(10.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.purpleAccent),
              ),
            ),
            keyboardType: TextInputType.emailAddress,
            controller: _emailController,
          ),

          const SizedBox(height: 20.0),TextField(
            decoration: InputDecoration(
              labelText: 'Password',
              labelStyle: TextStyle(
                color: Colors.purple,
                fontWeight: FontWeight.bold,
              ),
              prefixIcon: Icon(Icons.lock,
              color: Colors.purple,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.purple),
                borderRadius: BorderRadius.circular(10.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.purple),
              ),
            ),
            controller: _passwordController,
            obscureText: true,
          ),

          const SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/home');
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.purple),
            ),
            child: Text(
              'Login',
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 16.0,
              ),
            ),
          ),
          const SizedBox(height: 1.0),
          TextButton(
            onPressed: () {
              // Handle registration or forgot password
            },
            child: Text(
              'Forgot Password?',
              style: TextStyle(
                color: Colors.purple,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
