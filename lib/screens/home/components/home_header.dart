import 'package:flutter/material.dart';
import 'package:shopy/screens/cart/cart_screen.dart';
import 'package:shopy/screens/home/components/search_field.dart';

import '../../../size_config.dart';
import 'icon_btn_with_counter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(24),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconBtnWithCounter(
            svgSrc: 'assets/icons/Cart Icon.svg',
            // numOfItems: 9,
            press: () {
              Navigator.pushNamed(context, CartScreen.routeName);
            },
          ),
          IconBtnWithCounter(
            svgSrc: 'assets/icons/Bell.svg',
            numOfItems: 9,
            press: () {},
          ),
        ],
      ),
    );
  }
}
