import 'package:flutter/material.dart';
import 'package:shopy/models/Cart.dart';

import 'components/cartScreenBody.dart';
import 'components/check_out_card.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);
  static String routeName = '/cart';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: CheckOutCard(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Column(
        children: [
          Text(
            'My Cart',
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '${demoCarts.length} items',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w200,
            ),
          ),
        ],
      ),
    );
  }
}
