import 'package:flutter/material.dart';

class S4532 extends StatelessWidget {
  const S4532({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'App Akademie',
        ),
        SizedBox(height: 20),
        Text(
          'App Akademie',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
        SizedBox(height: 20),
        Text(
          'App Akademie',
          style: TextStyle(
            fontSize: 10,
            fontStyle: FontStyle.italic,
            color: Colors.green,
          ),
        ),
      ],
    );
  }
}
