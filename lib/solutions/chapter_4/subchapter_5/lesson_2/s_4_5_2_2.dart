import 'package:flutter/material.dart';

class S4522 extends StatelessWidget {
  const S4522({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const _MyNameWidget();
  }
}

class _MyNameWidget extends StatefulWidget {
  const _MyNameWidget({Key? key}) : super(key: key);

  @override
  _MyNameWidgetState createState() => _MyNameWidgetState();
}

class _MyNameWidgetState extends State<_MyNameWidget> {
  String name = '';

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
              setState(() {
                
              });
            },
            child: const Text('Klick mich'),
          ),
        ],
      ),
    );
  }
}