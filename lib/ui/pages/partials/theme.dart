import 'package:flutter/material.dart';

// colors pallets
const Color bluishClr = Color(0xFF4e5ae8);
const Color orangeClr = Color(0xCFFF8746);
const Color pinkClr = Color(0xFFff4667);
const Color white = Colors.white;
const primaryClr = bluishClr;
const Color darkGreyClr = Color(0xFF121212);
const Color darkHeaderClr = Color(0xFF424242);

// ! Custom Theme on Dark and Light Theme
class Themes {
  static final ThemeData light = ThemeData(
    primaryColor: Colors.red,
    brightness: Brightness.light,
  );

  static final ThemeData dark = ThemeData(
        primaryColor: Colors.yellow,
        brightness: Brightness.light,
      );
}
