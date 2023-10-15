import 'package:flutter/material.dart';

class SPINEclub extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spine Club'),
      ),
      body: Center(
        child: Text(
          'Welcome to Spine Club!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}