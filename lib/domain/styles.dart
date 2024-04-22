import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
  static const double defaultPadding = 8.0; // padding for Container with Image
  static const double elementSpacing = 20.0;  // spacing for SizedBoxes

  static final TextStyle titleStyle = GoogleFonts.oswald( //font i want to use for titles like Name, Weight, Size, favorite food
    fontSize: 16, // fontSize for titles
    fontWeight: FontWeight.bold,  // fontweight for titles
  );

  static const TextStyle defaultTextStyle = TextStyle(  // TextStyle for descriptions of titles
    fontSize: 14, // fontsize for descriptions
    fontWeight: FontWeight.normal,  //fontweight for descriptions
  );
}
