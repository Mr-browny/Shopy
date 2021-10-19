import 'package:flutter/material.dart';

import '../../size_config.dart';

class SplashContent extends StatelessWidget {
  final String text;
  final String image;
  const SplashContent({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Image.asset(
          image,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(400),
          fit: BoxFit.contain,
        )
      ],
    );
  }
}
