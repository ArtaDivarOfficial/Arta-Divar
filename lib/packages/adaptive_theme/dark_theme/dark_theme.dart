import 'package:flutter/material.dart';

ThemeData darkTheme({required BuildContext context}) {
  return ThemeData(
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      elevation: 0.2,
    ),
  );
}
