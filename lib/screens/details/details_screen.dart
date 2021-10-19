import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopy/components/rounded_icon_btn.dart';
import 'package:shopy/models/Product.dart';
import 'package:shopy/size_config.dart';

import 'components/custom_app_bar.dart';
import 'components/detailScreenBody.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);
  static String routeName = '/details';

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)?.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: myCustomAppBar(context, rating: arguments.product.rating),
      body: Body(
        product: arguments.product,
      ),
    );
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}
