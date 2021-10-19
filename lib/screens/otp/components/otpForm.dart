import 'package:flutter/material.dart';
import 'package:shopy/components/default_button.dart';
import 'package:shopy/screens/login_success/login_success_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({Key? key}) : super(key: key);

  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  // This late means, the value would come later
  late FocusNode pin1FocusNode;
  late FocusNode pin2FocusNode;
  late FocusNode pin3FocusNode;
  late FocusNode pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin1FocusNode = FocusNode();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    pin1FocusNode.dispose();
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
    super.dispose();
  }

  void nextField(
      {String? value, FocusNode? focusNode, FocusNode? prevFocusNode}) {
    // This function takes two arguements, the value and the next focusNode to attack
    if (value!.length == 1) {
      focusNode!.requestFocus();
    } else {
      prevFocusNode!.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  autofocus: true,
                  focusNode: pin1FocusNode,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    nextField(
                      value: value,
                      focusNode: pin2FocusNode,
                    );
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin2FocusNode,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    nextField(
                      value: value,
                      focusNode: pin3FocusNode,
                      prevFocusNode: pin1FocusNode,
                    );
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin3FocusNode,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    nextField(
                      value: value,
                      focusNode: pin4FocusNode,
                      prevFocusNode: pin2FocusNode,
                    );
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin4FocusNode,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    if (value.length != 1) {
                      nextField(
                        value: value,
                        prevFocusNode: pin3FocusNode,
                      );
                    } else {
                      pin4FocusNode.unfocus();
                    }
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 0.15,
          ),
          DefaultButton(
            text: 'Continue',
            press: () {
              Navigator.popAndPushNamed(context, LoginSuccessScreen.routeName);
            },
          )
        ],
      ),
    );
  }
}
