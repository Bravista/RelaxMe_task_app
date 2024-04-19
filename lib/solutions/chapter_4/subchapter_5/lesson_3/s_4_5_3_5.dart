import 'package:flutter/material.dart';

class S4535 extends StatelessWidget {
  const S4535({super.key});

  Widget buildColoredContainer(Color color) {
    return Container(
      width: 100,
      height: 100,
      color: color,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          _buildRowWithContainers(Colors.red, Colors.green),
          _buildRowWithContainers(Colors.blue, Colors.yellow),
        ],
      ),
    );
  }

  Widget _buildRowWithContainers(Color color1, Color color2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        buildColoredContainer(color1),
        buildColoredContainer(color2),
      ],
    );
  }
}



//oder ohne auslagern der container


/*

import 'package:flutter/material.dart';

class S4535 extends StatelessWidget {
  const S4535({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.yellow,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

*/