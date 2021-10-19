import 'package:flutter/material.dart';

import '../size_config.dart';

class RoundedIconBtn extends StatelessWidget {
  const RoundedIconBtn({
    Key? key,
    required this.iconData,
    required this.press,
  }) : super(key: key);
  final Icon iconData;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(40),
      width: getProportionateScreenWidth(40),
      child: MaterialButton(
        padding: EdgeInsets.zero,
        onPressed: press,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        child: iconData,
      ),
    );
  }
}
