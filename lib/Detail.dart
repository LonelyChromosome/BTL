import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Main content',
          style: TextStyle(
            fontSize: 25,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
