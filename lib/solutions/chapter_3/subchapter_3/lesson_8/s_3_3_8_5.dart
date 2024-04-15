import 'package:flutter/material.dart';

bool isPalindrome(String input) {
  // Konvertiere den inputing in Kleinbuchstaben und entferne Leerzeichen
  input = input.toLowerCase().replaceAll(' ', '');
  
  // Iteriere über den inputing bis zur Hälfte der Länge
  for (int i = 0; i < input.length ~/ 2; i++) {
    // Vergleiche den Buchstaben von vorne mit dem entsprechenden Buchstaben von hinten
    if (input[i] != input[input.length - i - 1]) {
      // Wenn sie nicht übereinstimmen, ist der inputing kein Palindrom
      return false;
    }
  }
  
  // Wenn alle Buchstaben übereinstimmen, ist der inputing ein Palindrom
  return true;
}

class S3385 extends StatefulWidget {
  const S3385({Key? key}) : super(key: key);

  @override
  State<S3385> createState() => _S3385State();
}

class _S3385State extends State<S3385> {
  final TextEditingController _inputController = TextEditingController();
  String? output;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _inputController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Text',
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        Text(
          output?.toString() ?? '',
          style: const TextStyle(fontSize: 24),
        ),
        const SizedBox(
          height: 32,
        ),
        ElevatedButton(
          onPressed: () {
            final input = _inputController.text;
            setState(() {
              output = isPalindrome(input) ? 'Palindrom' : 'Kein Palindrom';
            });
          },
          child: const Text('Prüfe Palindrom'),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _inputController.dispose();
    super.dispose();
  }
}
