import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Introduction about the app',
          style: TextStyle(
            fontSize: 25,
            color: Colors.green.shade900,
          ),
        ),
      ),
    );
  }
}
