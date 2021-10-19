import 'package:flutter/material.dart';
import 'package:shopy/components/no_account_text.dart';
import 'package:shopy/components/social_card.dart';
import 'package:shopy/screens/sign_in/sign_in_screen.dart';
import 'package:shopy/screens/sign_up/components/signUpForm.dart';
import 'package:shopy/size_config.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(24),
          ),
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.04,
              ),
              Text(
                'Register Account',
                style: headingStyle,
              ),
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              Text(
                'Complete your details, or continue \nwith social media',
                textAlign: TextAlign.center,
              ),
              SignUpForm(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.08,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                    iconName: 'assets/icons/google-icon.svg',
                    press: () {},
                  ),
                  SocialCard(
                    iconName: 'assets/icons/facebook-2.svg',
                    press: () {},
                  ),
                  SocialCard(
                    iconName: 'assets/icons/twitter.svg',
                    press: () {},
                  ),
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              NoAccountText(
                text: "Already have an account?",
                location: 'Login',
                press: () {
                  Navigator.popAndPushNamed(context, SignInScreen.routeName);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
