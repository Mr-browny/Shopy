import 'package:flutter/material.dart';
import 'package:shopy/components/custom_surfix_icon.dart';
import 'package:shopy/components/default_button.dart';
import 'package:shopy/components/form_error.dart';
import 'package:shopy/components/no_account_text.dart';
import 'package:shopy/screens/sign_up/sign_up_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              Text(
                'Forgot Password',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: getProportionateScreenHeight(24),
                    color: Colors.black),
              ),
              Text(
                'Please enter your email and we will send\n you a link to return to your account',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              ForgotPassForm()
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPassForm extends StatefulWidget {
  const ForgotPassForm({Key? key}) : super(key: key);

  @override
  _ForgotPassFormState createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String? email;
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              onSaved: (newValue) => email = newValue,
              onChanged: (value) {
                if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                  setState(() {
                    errors.remove(kEmailNullError);
                  });
                } else if (emailValidatorRegExp.hasMatch(value) &&
                    errors.contains(kInvalidEmailError)) {
                  setState(() {
                    errors.remove(kInvalidEmailError);
                  });
                }
                return null;
              },
              validator: (value) {
                // Remember to add an ! after the value, for null safety
                // The and logic there is so that the error message won't be duplicated...
                if (value!.isEmpty && !errors.contains(kEmailNullError)) {
                  setState(() {
                    errors.add(kEmailNullError);
                  });
                } else if (!emailValidatorRegExp.hasMatch(value) &&
                    !errors.contains(kInvalidEmailError)) {
                  setState(() {
                    errors.add(kInvalidEmailError);
                  });
                }
                return null;
              },
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelText: 'Email',
                hintText: "Enter your email...",
                suffixIcon: CustomSuffix(
                  svgIcon: 'assets/icons/Mail.svg',
                ),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            FormError(errors: errors),
            SizedBox(height: SizeConfig.screenHeight * 0.1),
            DefaultButton(
              text: 'Continue',
              press: () {
                if (_formKey.currentState!.validate()) {
                  // Do anything, send a mail to the email, maybe...
                  _formKey.currentState!.save();
                }
              },
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.1),
            NoAccountText(
              text: "Don't have an account?",
              location: 'Signup',
              press: () {
                Navigator.popAndPushNamed(context, SignUpScreen.routeName);
              },
            )
          ],
        ));
  }
}
