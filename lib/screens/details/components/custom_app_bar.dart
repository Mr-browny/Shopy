import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopy/components/rounded_icon_btn.dart';

import '../../../size_config.dart';

PreferredSize myCustomAppBar(BuildContext context, {rating}) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(80.0),
    child: Container(
      // decoration: const BoxDecoration(
      //   gradient: LinearGradient(
      //     colors: <Color>[Colors.blue, Colors.pink],
      //   ),
      // ),
      // child: const AppBarContent(),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenHeight(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: getProportionateScreenHeight(10),
                ),
                width: getProportionateScreenWidth(45),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: RoundedIconBtn(
                  iconData: Icon(Icons.arrow_back),
                  press: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Row(
                  children: [
                    Text(
                      rating.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    SvgPicture.asset('assets/icons/Star Icon.svg'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
