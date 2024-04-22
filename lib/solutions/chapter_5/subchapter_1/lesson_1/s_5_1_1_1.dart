import 'package:flutter/material.dart';

class S5111 extends StatelessWidget {
  const S5111({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Hello World!',
          style: TextStyle(
              fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black45),
        ),
        const SizedBox(height: 50,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
            const SizedBox(width: 40),
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),
          ],
        ),
        const SizedBox(height: 50,),
        Switch(
          value: true,
          onChanged: (value) {},
          activeColor: Colors.orange,
        ),
      ],
    );
  }
}
