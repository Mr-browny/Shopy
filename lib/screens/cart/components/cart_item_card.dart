import 'package:flutter/material.dart';
import 'package:shopy/models/Cart.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    required this.cart,
    Key? key,
  }) : super(key: key);

  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(88),
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFFF5f6f9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(
                cart.product.images[0],
              ),
            ),
          ),
        ),
        SizedBox(
          width: getProportionateScreenWidth(20),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cart.product.title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 2,
            ),
            SizedBox(height: 10),
            Text.rich(
              TextSpan(
                  text: '\$${cart.product.price}',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 18,
                  ),
                  children: [
                    TextSpan(
                      text: ' x${cart.numOfItems}',
                      style: TextStyle(
                        color: kTextColor,
                        fontSize: 18,
                      ),
                    )
                  ]),
            ),
          ],
        )
      ],
    );
  }
}
