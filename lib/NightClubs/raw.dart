import 'package:flutter/material.dart';

class RAWclub extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Raw Club'),
      ),
      body: Center(
        child: Text(
          'Welcome to Raw Club!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}