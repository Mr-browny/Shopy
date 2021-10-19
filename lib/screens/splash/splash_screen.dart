import 'package:flutter/material.dart';
import 'package:shopy/screens/components/splashScreenBody.dart';
import 'package:shopy/size_config.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const String routeName = '/splash';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
