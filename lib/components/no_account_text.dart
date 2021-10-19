import 'package:flutter/material.dart';

// Importing Config files
import '../constants.dart';
import '../size_config.dart';

// Importing the Screens
// import 'package:shopy/screens/sign_up/sign_up_screen.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
    required this.text,
    required this.location,
    required this.press,
  }) : super(key: key);
  final String text;
  final String location;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '$text ',
          style: TextStyle(fontSize: getProportionateScreenWidth(16)),
        ),
        GestureDetector(
          onTap: () {
            press();
          },
          child: Text(
            location,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(16),
              color: kPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
