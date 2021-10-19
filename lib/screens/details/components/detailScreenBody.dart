import 'package:flutter/material.dart';
import 'package:shopy/components/default_button.dart';
import 'package:shopy/models/Product.dart';
import 'package:shopy/screens/details/components/product_description.dart';
import 'package:shopy/screens/details/components/product_images.dart';
import 'package:shopy/screens/details/components/top_rounded_corners.dart';
import 'package:shopy/size_config.dart';

import 'color_dots.dart';

class Body extends StatelessWidget {
  const Body({required this.product, Key? key}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          TopRoudedCorners(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(
                  product: product,
                  press: () {},
                ),
                TopRoudedCorners(
                  color: Color(0xFFF6F7F9),
                  child: Column(
                    children: [
                      ColorDots(product: product),
                      TopRoudedCorners(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenWidth(30),
                            vertical: getProportionateScreenWidth(10),
                          ),
                          child: DefaultButton(
                            text: "Add to cart",
                            press: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
