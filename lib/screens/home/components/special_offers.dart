import 'package:flutter/material.dart';
import 'package:shopy/screens/home/components/section_title.dart';

import '../../../size_config.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: 'Special Product',
          press: () {},
        ),
        SizedBox(
          height: getProportionateScreenWidth(20),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialCard(
                category: 'Smart Phones',
                image: 'assets/images/Image Banner 2.png',
                numOfBrands: 19,
                press: () {},
              ),
              SpecialCard(
                category: 'Fashion',
                image: 'assets/images/Image Banner 3.png',
                numOfBrands: 24,
                press: () {},
              ),
              SizedBox(
                width: getProportionateScreenWidth(20),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialCard extends StatelessWidget {
  const SpecialCard({
    Key? key,
    required this.category,
    required this.image,
    this.numOfBrands = 0,
    required this.press,
  }) : super(key: key);

  final String category, image;
  final int numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: InkWell(
        onTap: press,
        child: SizedBox(
          width: getProportionateScreenWidth(242),
          height: getProportionateScreenWidth(100),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF343434).withOpacity(0.4),
                        Color(0xFF343434).withOpacity(0.15),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15),
                    vertical: getProportionateScreenWidth(10),
                  ),
                  child: Text.rich(
                    TextSpan(
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        children: [
                          TextSpan(
                            text: '$category\n',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          TextSpan(
                            text: '$numOfBrands Brands',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          )
                        ]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
