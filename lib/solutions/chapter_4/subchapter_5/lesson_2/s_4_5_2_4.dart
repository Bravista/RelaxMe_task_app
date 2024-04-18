import 'package:flutter/material.dart';

class S4524 extends StatelessWidget {
  const S4524({super.key});
  @override
  Widget build(BuildContext context) {
    return const ShowHideNameWidget();
  }
}

class ShowHideNameWidget extends StatefulWidget {
  const ShowHideNameWidget({super.key});

  @override
  ShowHideNameWidgetState createState() => ShowHideNameWidgetState();
}

class ShowHideNameWidgetState extends State<ShowHideNameWidget> {
  String name = '';
  String buttonText = 'Name anzeigen';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          name,
          style: const TextStyle(fontSize: 24.0),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              if (name.isNotEmpty) {
                name = '';
                buttonText = 'Name anzeigen';
              } else {
                name = 'Michael';
                buttonText = 'Name verstecken';
              }
            });
          },
          child: Text(buttonText),
        ),
      ],
    );
  }
}
