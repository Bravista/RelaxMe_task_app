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
  String name = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          name,
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              name = 'Michael';
            });
          },
          child: const Text('Name anzeigen'),
        ),
      ],
    );
  }
}
