import 'package:flutter/material.dart';
import 'package:shopy/models/Product.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ProductImages extends StatefulWidget {
  const ProductImages({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  _ProductImagesState createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(238),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(
              widget.product.images[selectedImage],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              widget.product.images.length,
              (index) => buildImagePreview(index: index),
            )
          ],
        )
      ],
    );
  }

  GestureDetector buildImagePreview({required int index}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: getProportionateScreenWidth(10)),
        padding: EdgeInsets.all(getProportionateScreenWidth(8)),
        width: getProportionateScreenWidth(48),
        height: getProportionateScreenHeight(48),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(
            color: selectedImage == index ? kPrimaryColor : Colors.transparent,
          ),
        ),
        child: Image.asset(
          widget.product.images[index],
        ),
      ),
    );
  }
}
