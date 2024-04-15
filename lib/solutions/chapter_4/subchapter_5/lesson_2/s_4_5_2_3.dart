import 'package:flutter/material.dart';

class S4523 extends StatelessWidget {
  const S4523({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const MyNameWidget();
  }
}

class MyNameWidget extends StatefulWidget {
  const MyNameWidget({Key? key}) : super(key: key);

  @override
  MyNameWidgetState createState() => MyNameWidgetState();
}

class MyNameWidgetState extends State<MyNameWidget> {
  String _name = ''; // Der Name wird hier gespeichert

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            _name, // Hier wird der aktuelle Name angezeigt
            style: const TextStyle(fontSize: 24.0),
          ),
          ElevatedButton(
            onPressed: () {
              // Wenn der Button gedrückt wird, wird der Name auf "Michael" gesetzt
              setState(() {
                _name = 'Michael';
              });
            },
            child: const Text('Name anzeigen'),
          ),
        ],
      ),
    );
  }
}
