import 'package:flutter/material.dart';
import 'package:shopy/components/product_card.dart';
import 'package:shopy/models/Product.dart';
import 'package:shopy/screens/details/details_screen.dart';
import 'package:shopy/screens/home/components/section_title.dart';

import '../../../size_config.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: 'Popular Product',
          press: () {},
        ),
        SizedBox(
          height: getProportionateScreenWidth(20),
        ),
        Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(
                    demoProducts.length,
                    (index) => ProductCard(
                      product: demoProducts[index],
                      press: () {
                        Navigator.pushNamed(
                          context,
                          DetailsScreen.routeName,
                          arguments: ProductDetailsArguments(
                            product: demoProducts[index],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(20),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
