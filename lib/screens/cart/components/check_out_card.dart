import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopy/components/default_button.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class CheckOutCard extends StatelessWidget {
  const CheckOutCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
          vertical: getProportionateScreenWidth(15),
          horizontal: getProportionateScreenWidth(30),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              offset: Offset(0, -15),
              color: Color(0xFFDADADA).withOpacity(0.15),
            )
          ],
        ),
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: getProportionateScreenWidth(40),
                    width: getProportionateScreenWidth(40),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFF5F6F9),
                    ),
                    child: SvgPicture.asset('assets/icons/receipt.svg'),
                  ),
                  Spacer(),
                  Text('Add voucher code'),
                  const SizedBox(width: 10),
                  Icon(
                    Icons.arrow_right,
                    size: 32,
                    color: kPrimaryColor,
                  ),
                ],
              ),
              SizedBox(
                height: getProportionateScreenWidth(10),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(
                    TextSpan(text: 'Total: \n', children: [
                      TextSpan(
                          text: '\$337.15',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ))
                    ]),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(190),
                    child: DefaultButton(
                      text: 'Check Out',
                      press: () {},
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
