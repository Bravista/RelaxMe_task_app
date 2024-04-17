import 'package:flutter/material.dart';

int countVowels(String input) {
   input = input.toLowerCase();
  
  int vowelCount = 0;
  // Definiere eine Liste mit den Vokalen
  List<String> vowels = ['a', 'e', 'i', 'o', 'u'];
  
  // Iteriere über jeden Buchstaben im String
  for (int i = 0; i < input.length; i++) {
    // Überprüfe, ob der Buchstabe ein Vokal ist
    if (vowels.contains(input[i])) {
      vowelCount++;
    }
  }
  
  return vowelCount;
}

class S3384 extends StatefulWidget {
  const S3384({super.key});

  @override
  State<S3384> createState() => _S3384State();
}

class _S3384State extends State<S3384> {
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
              output = countVowels(input).toString();
            });
          },
          child: const Text('Zähle Vokale'),
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
