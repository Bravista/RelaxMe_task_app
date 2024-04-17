import 'package:flutter/material.dart';

class S4523 extends StatelessWidget {
  const S4523({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const MyNameWidget();
  }
}

class MyNameWidget extends StatefulWidget {
  const MyNameWidget({super.key});

  @override
  MyNameWidgetState createState() => MyNameWidgetState();
}

class MyNameWidgetState extends State<MyNameWidget> {
  String name = ''; // Der Name wird hier gespeichert

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            name, // Hier wird der aktuelle Name angezeigt
            style: const TextStyle(fontSize: 24.0),
          ),
          ElevatedButton(
            onPressed: () {
              // Wenn der Button gedrückt wird, wird der Name auf "Michael" gesetzt
              setState(() {
                name = 'Michael';
              });
            },
            child: const Text('Name anzeigen'),
          ),
        ],
      ),
    );
  }
}
