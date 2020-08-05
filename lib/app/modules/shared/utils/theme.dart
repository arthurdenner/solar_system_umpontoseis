import 'dart:ui';

import 'package:flutter/material.dart';

final defaultTheme = ThemeData(
  visualDensity: VisualDensity.adaptivePlatformDensity,
  primarySwatch: Colors.blue,
  fontFamily: 'Roboto',
  textTheme: TextTheme(
    headline4: TextStyle(
      fontFamily: 'Roboto',
      fontSize: 32,
      fontWeight: FontWeight.bold,
    ),
    button: TextStyle(
      fontFamily: 'Roboto',
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    bodyText1: TextStyle(
      fontFamily: 'Roboto',
      fontSize: 16,
    ),
    bodyText2: TextStyle(
      fontFamily: 'Roboto',
      fontSize: 14,
    ),
    caption: TextStyle(
      fontFamily: 'Roboto',
      fontSize: 12,
    ),
  ),
);
