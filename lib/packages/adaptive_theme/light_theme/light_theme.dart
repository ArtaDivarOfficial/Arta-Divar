import 'package:flutter/material.dart';

ThemeData lightTheme({required BuildContext context}) {
  return ThemeData(
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      centerTitle: true,
      elevation: 0.2,
      actionsIconTheme: IconThemeData(color: Colors.black),
    ),
  );
}
