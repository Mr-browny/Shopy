import 'package:flutter/material.dart';

import 'constants.dart';

ThemeData themeData() {
  return ThemeData(
    appBarTheme: buildAppBar(),
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Muli',
    textTheme: buildTextTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    primarySwatch: Colors.blue,
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: BorderSide(color: kTextColor),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: EdgeInsets.symmetric(
      horizontal: 45,
      vertical: 20,
    ),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}

TextTheme buildTextTheme() {
  return TextTheme(
    bodyText1: TextStyle(color: kTextColor),
    bodyText2: TextStyle(color: kTextColor),
  );
}

AppBarTheme buildAppBar() {
  return AppBarTheme(
    color: Colors.white,
    elevation: 0,
    brightness: Brightness.light,
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
    textTheme: TextTheme(
      headline6: TextStyle(
        color: Color(0xFF8B8B8B),
        fontSize: 20,
      ),
    ),
  );
}
