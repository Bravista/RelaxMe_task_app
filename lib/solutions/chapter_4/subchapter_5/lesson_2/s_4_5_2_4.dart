import 'package:flutter/material.dart';

class S4524 extends StatelessWidget {
  const S4524({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const ShowHideNameWidget();
  }
}
class ShowHideNameWidget extends StatefulWidget {
  const ShowHideNameWidget({Key? key}) : super(key: key);

  @override
  ShowHideNameWidgetState createState() => ShowHideNameWidgetState();
}

class ShowHideNameWidgetState extends State<ShowHideNameWidget> {
  String _name = ''; // Zustand für den Namen
  String _buttonText = 'Name anzeigen'; // Zustand für den Button-Text

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            _name, // Aktueller Name wird hier angezeigt
            style: const TextStyle(fontSize: 24.0),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                // Wenn der Name angezeigt wird, wird er jetzt versteckt
                if (_name.isNotEmpty) {
                  _name = ''; // Leeren String setzen
                  _buttonText = 'Name anzeigen'; // Button-Text ändern
                } else {
                  // Wenn der Name versteckt wird, wird er jetzt angezeigt
                  _name = 'Michael'; // Dein Name einfügen
                  _buttonText = 'Name verstecken'; // Button-Text ändern
                }
              });
            },
            child: Text(_buttonText), // Dynamischer Button-Text
          ),
        ],
      ),
    );
  }
}