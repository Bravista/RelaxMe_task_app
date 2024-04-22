import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';

/// This functions tries to hack a 4 digit PIN.
/// It returns the PIN as a string.
String hackPin() {
  // Iteriere über alle möglichen 4-stelligen PINs (von 0000 bis 9999)
  for (int i = 0; i <= 9999; i++) {
    // Formatiere die aktuelle Zahl als 4-stelligen String mit führenden Nullen
    String currentPin = i.toString().padLeft(4, '0');
    
    // Überprüfe, ob die aktuelle PIN korrekt ist
    if (_isPinCorrect(currentPin)) {
      // Wenn die PIN korrekt ist, gib sie zurück
      return currentPin;
    }
  }
  
  // Wenn keine korrekte PIN gefunden wurde, gib eine leere Zeichenkette zurück
  return '';
}

// ignore: unused_element
bool _isPinCorrect(String input) {
  final hashedInput = sha1.convert(utf8.encode(input)).toString();
  return hashedInput == _secretPinHashed;
}

const String _secretPinHashed = '2a0ebfb7c7ecc618493f4f6dfae77d2bccddc7ba';

class S3387 extends StatefulWidget {
  const S3387({super.key});

  @override
  State<S3387> createState() => _S3387State();
}

class _S3387State extends State<S3387> {
  String? output;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          output?.toString() ?? '',
          style: const TextStyle(fontSize: 24),
        ),
        const SizedBox(
          height: 32,
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              output = "Die PIN lautet: ${hackPin()}.";
            });
          },
          child: const Text('Hacke PIN'),
        ),
      ],
    );
  }
}
