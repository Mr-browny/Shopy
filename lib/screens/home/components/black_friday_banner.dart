import 'package:flutter/material.dart';



import '../../../size_config.dart';class BlackFridayBanner extends StatelessWidget {
  const BlackFridayBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(24),
      ),
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(24),
          vertical: getProportionateScreenWidth(12)),
      width: double.infinity,
      // height: 90,
      decoration: BoxDecoration(
        color: Color(0xFF4A3298),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Text.rich(
        TextSpan(
          text: 'November Deals\n',
          style: TextStyle(
            color: Colors.white,
          ),
          children: [
            TextSpan(
              text: 'Black ',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: 'Friday',
              style: TextStyle(
                fontSize: 40,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: Colors.black.withOpacity(0.9),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
