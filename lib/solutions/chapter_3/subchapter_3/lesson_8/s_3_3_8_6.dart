import 'package:flutter/material.dart';

bool isAnagram(String word1, String word2) {
  // Konvertiere die Strings in Kleinbuchstaben und entferne Leerzeichen
  word1 = word1.toLowerCase().replaceAll(' ', '');
  word2 = word2.toLowerCase().replaceAll(' ', '');
  
  // Überprüfe, ob die Längen der Strings gleich sind
  if (word1.length != word2.length) {
    return false;
  }
  
  // Konvertiere die Strings in Listen von Buchstaben
  List<String> list1 = word1.split('');
  List<String> list2 = word2.split('');
  
  // Sortiere die Listen
  list1.sort();
  list2.sort();
  
  // Vergleiche die sortierten Listen
  for (int i = 0; i < list1.length; i++) {
    if (list1[i] != list2[i]) {
      return false;
    }
  }
  
  // Wenn alle Buchstaben übereinstimmen, sind die Strings Anagramme
  return true;
}

class S3386 extends StatefulWidget {
  const S3386({Key? key}) : super(key: key);

  @override
  State<S3386> createState() => _S3386State();
}

class _S3386State extends State<S3386> {
  final TextEditingController _input1Controller = TextEditingController();
  final TextEditingController _input2Controller = TextEditingController();
  String? output;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _input1Controller,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Wort 1',
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        TextField(
          controller: _input2Controller,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Wort 2',
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
            final input1 = _input1Controller.text;
            final input2 = _input2Controller.text;
            setState(() {
              output = isAnagram(input1, input2) ? 'Anagram' : 'Kein Anagram';
            });
          },
          child: const Text('Prüfe Anagram'),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _input1Controller.dispose();
    super.dispose();
  }
}
