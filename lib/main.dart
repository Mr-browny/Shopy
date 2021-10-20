import 'package:flutter/material.dart';
import 'package:shopy/routes.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

// Importing Screens
import 'screens/splash/splash_screen.dart';
import 'theme.dart';

void main() => runApp(ShopyApp());

class ShopyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget splash = SplashScreenView(
      navigateRoute: SplashScreen(),
      duration: 5000,
      imageSize: 130,
      imageSrc: "./assets/images/icon.png",
      text: "Shopy",
      textType: TextType.ColorizeAnimationText,
      textStyle: TextStyle(
        fontSize: 40.0,
      ),
      colors: [
        Colors.purple,
        Colors.blue,
        Colors.yellow,
        Colors.red,
      ],
      backgroundColor: Colors.white,
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopy',
      theme: themeData(),
      home: splash,
      // initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
