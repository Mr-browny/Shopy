import 'package:flutter/material.dart';
import 'package:shopy/constants.dart';
import 'package:shopy/screens/otp/components/otpForm.dart';
import 'package:shopy/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(24)),
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.05,
              ),
              Text(
                'OTP VERIFICATION',
                style: headingStyle,
              ),
              Text(
                'We sent your code to +234810157****',
                textAlign: TextAlign.center,
              ),
              buildTimer(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.15,
              ),
              OtpForm(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.1,
              ),
              GestureDetector(
                onTap: () {
                  // Write a function to resend the OTP to the number...
                },
                child: Text(
                  'Resend OTP Code',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('This code will expire in '),
        TweenAnimationBuilder(
          tween: Tween<double>(begin: 59.0, end: 0),
          duration: Duration(seconds: 30),
          builder: (BuildContext context, double value, child) =>
              // Text("00:${int.parse('9')}"),
              Text(
            '00:${value.toInt()}',
            style: TextStyle(
              color: kPrimaryColor,
            ),
          ),
        )
      ],
    );
  }
}
