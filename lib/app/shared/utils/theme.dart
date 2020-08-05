import 'dart:ui';

import 'package:flutter/material.dart';

import 'colors.dart';

final defaultTheme = ThemeData(
  scaffoldBackgroundColor: AppColors.brand,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  primarySwatch: Colors.blue,
  fontFamily: 'Roboto',
  textTheme: TextTheme(
    headline4: TextStyle(
      color: AppColors.brandWhite,
      fontFamily: 'Roboto',
      fontSize: 32,
      fontWeight: FontWeight.bold,
    ),
    button: TextStyle(
      color: AppColors.brandWhite,
      fontFamily: 'Roboto',
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    bodyText1: TextStyle(
      color: AppColors.brandWhite,
      fontFamily: 'Roboto',
      fontSize: 16,
    ),
    bodyText2: TextStyle(
      color: AppColors.brandWhite,
      fontFamily: 'Roboto',
      fontSize: 14,
    ),
    caption: TextStyle(
      color: AppColors.brandWhite,
      fontFamily: 'Roboto',
      fontSize: 12,
    ),
  ),
);
