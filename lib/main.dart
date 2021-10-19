import 'package:flutter/material.dart';
import 'package:shopy/routes.dart';

// Importing Screens
import 'screens/splash/splash_screen.dart';
import 'theme.dart';

void main() => runApp(ShopyApp());

class ShopyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopy',
      theme: themeData(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
