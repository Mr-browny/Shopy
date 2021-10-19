import 'package:flutter/material.dart';

class SizeConfig {
  // static MediaQueryData _mediaQueryData;
  // static Orientation orientation;
  static double screenWidth = 0;
  static double screenHeight = 0;
  static double defaultSize = 0;

  void init(BuildContext context) {
    MediaQueryData _mediaQueryData = MediaQuery.of(context);
    Orientation orientation = _mediaQueryData.orientation;
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
  }
}

// Deriving the actual height for each screen size
double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  // Designers use 812 as the layout height
  return (inputHeight / 812.0) * screenHeight;
}

// Deriving the actual width for each screen size
double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  // Designers use 375 as the layout width
  return (inputWidth / 375.0) * screenWidth;
}
