import 'package:flutter/material.dart';

class Appcolors{
  static final primarycolor = Colors.deepPurple;
  static final shadecolor = hexToColor('#C4A3FF');

  static Color hexToColor(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) {
      buffer.write('FF'); // Add default opacity (100%)
    }
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}