import 'package:flutter/material.dart';
import 'package:shopy/components/custom_surfix_icon.dart';
import 'package:shopy/components/default_button.dart';
import 'package:shopy/components/form_error.dart';
import 'package:shopy/screens/complete_profile/complete_profile_screen.dart';
import 'package:shopy/size_config.dart';

import '../../../constants.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  static final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  String? confirmPassword;
  List<String> errors = [];
  // void addError({required String error}) {
  //   if (!errors.contains(error)) {
  //     setState(() {
  //       errors.add(error);
  //     });
  //   }
  // }

  // void removeError({required String error}) {
  //   if (errors.contains(error)) {
  //     setState(() {
  //       errors.remove(error);
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(
            height: SizeConfig.screenWidth * 0.1,
          ),
          buildEmailFormField(),
          SizedBox(
            height: getProportionateScreenHeight(24),
          ),
          buildPasswordFormField(),
          SizedBox(
            height: getProportionateScreenHeight(24),
          ),
          buildConfirmPasswordFormField(),
          SizedBox(
            height: getProportionateScreenHeight(24),
          ),
          FormError(errors: errors),
          SizedBox(
            height: getProportionateScreenHeight(24),
          ),
          DefaultButton(
            text: 'Continue',
            press: () {
              // Remember to add the !, for null-safety
              if (_formKey.currentState!.validate()) {
                // _formKey.currentState!.save();
                Navigator.pushNamed(context, CompleteProfileScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildConfirmPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => confirmPassword = newValue,
      onChanged: (value) {
        if (password == value) {
          setState(() {
            errors.remove(kMatchPassError);
          });
        }
      },
      validator: (value) {
        if (value!.isEmpty) {
          return '';
        } else if (password != value && !errors.contains(kMatchPassError)) {
          setState(() {
            errors.add(kMatchPassError);
          });
          return '';
        }
      },
      decoration: InputDecoration(
        labelText: 'Confirm Password',
        hintText: 'Confirm Password',
        suffixIcon: CustomSuffix(
          svgIcon: 'assets/icons/Lock.svg',
        ),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassNullError);
          });
        } else if (value.length >= 8 && errors.contains(kShortPassError)) {
          setState(() {
            errors.remove(kShortPassError);
          });
        }
        password = value;
        return null;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kPassNullError)) {
          setState(() {
            errors.add(kPassNullError);
          });
          // Returning an empty string, means that the validation didn't go through
          return '';
        } else if (value.length < 8 && !errors.contains(kShortPassError)) {
          setState(() {
            errors.add(kShortPassError);
          });
          return '';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: "Enter your password...",
        suffixIcon: CustomSuffix(
          svgIcon: 'assets/icons/Lock.svg',
        ),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
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
          // Returning an empty string, means that the validation didn't go through
          return '';
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
          return '';
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
    );
  }
}
