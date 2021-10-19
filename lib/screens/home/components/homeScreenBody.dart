import 'package:flutter/material.dart';
import 'package:shopy/screens/home/components/popular_product.dart';
import 'package:shopy/screens/home/components/special_offers.dart';
import 'package:shopy/size_config.dart';

import 'black_friday_banner.dart';
import 'categories.dart';
import 'home_header.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            HomeHeader(),
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            BlackFridayBanner(),
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            Categories(),
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            SpecialOffers(),
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            PopularProducts(),
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
          ],
        ),
      ),
    );
  }
}

