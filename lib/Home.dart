import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Welcome my home page',
          style: TextStyle(
            fontSize: 25,
            color: Colors.green.shade900,
          ),
        ),
      ),
    );
  }
}
