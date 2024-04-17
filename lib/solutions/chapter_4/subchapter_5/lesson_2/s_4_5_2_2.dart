import 'package:flutter/material.dart';

class S4522 extends StatelessWidget {
  const S4522({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Hello Michael",
          ),
          ElevatedButton(
            onPressed: () {
            },
            child: const Text('Klick mich'),
          ),
        ],
      ),
    );
  }
}

