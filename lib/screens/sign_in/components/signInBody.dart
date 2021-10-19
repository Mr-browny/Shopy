import 'package:flutter/material.dart';
import 'package:shopy/components/no_account_text.dart';
import 'package:shopy/components/social_card.dart';
import 'package:shopy/screens/sign_in/components/signForm.dart';
import 'package:shopy/screens/sign_up/sign_up_screen.dart';
import 'package:shopy/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(28),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight * 0.04,
                ),
                Text(
                  'Welcome Back',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(10),
                ),
                Text(
                  'Sign in with your email and password \nor ocntinue with social media',
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.08,
                ),
                SignForm(),
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
                  text: "Don't have an account?",
                  location: 'Signup',
                  press: () {
                    Navigator.popAndPushNamed(context, SignUpScreen.routeName);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
