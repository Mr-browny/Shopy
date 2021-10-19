import 'package:flutter/material.dart';
import 'package:shopy/size_config.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(24),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          InkWell(
            onTap: press,
            borderRadius: BorderRadius.circular(10),
            child: Text(
              'See More',
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
