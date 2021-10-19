import 'package:flutter/material.dart';

import '../size_config.dart';
import '../constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenWidth(56),
      child: MaterialButton(
        onPressed: () {
          press();
        },
        color: kPrimaryColor,
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
        child: Text(
          text,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(20),
            color: Colors.white,
          ),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      ),
    );
  }
}
