import 'package:flutter/material.dart';
import 'package:shopy/constants.dart';
import 'package:shopy/size_config.dart';

import 'completeProfileForm.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(24)),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.04,
              ),
              Text(
                'Complete Profile',
                style: headingStyle,
              ),
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              Text(
                'Complete your details or continue \nwith social media',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: getProportionateScreenHeight(24),
              ),
              CompleteProfileForm(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.04,
              ),
              Text(
                'By signing up, you confirm that you agree \nwith our Terms and Conditions.',
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
