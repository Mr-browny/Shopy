import 'package:flutter/material.dart';
import 'package:shopy/components/default_button.dart';
import 'package:shopy/screens/home/home_screen.dart';

import '../../../size_config.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight * 0.04),
            Image.asset(
              'assets/images/success.png',
              /* This means the 40% of the height... */
              height: SizeConfig.screenHeight * 0.4,
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.08),
            Text(
              'Login Sucess',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: getProportionateScreenWidth(30),
              ),
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.1,
            ),
            SizedBox(
              width: SizeConfig.screenWidth * 0.7,
              child: DefaultButton(
                text: 'Back to Home',
                press: () {
                  Navigator.pushNamed(context, HomeScreen.routeName);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
