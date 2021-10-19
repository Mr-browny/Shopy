import 'package:flutter/material.dart';

// Importing Screens
import 'package:shopy/screens/forgot_password/forgot_password.dart';
import 'package:shopy/screens/login_success/login_success_screen.dart';

// Importing Components
import 'package:shopy/components/custom_surfix_icon.dart';
import 'package:shopy/components/default_button.dart';
import 'package:shopy/components/form_error.dart';

// Importing Config files
import '../../../constants.dart';
import '../../../size_config.dart';

class SignForm extends StatefulWidget {
  const SignForm({Key? key}) : super(key: key);

  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  // I'm using this late, to tell dart, that the values will be gotten later,
  // This is because of dart's new null-safety
  // late String email;
  // late String password;

  /*
    But if i use the late, i'd get an error message on the respective inputTextField
    that the value of String? can't have the value of String assigned to it,
    so i simply used the String?
  */
  String? email;
  String? password;
  bool? remember = false;
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(
            height: getProportionateScreenHeight(24),
          ),
          buildPasswordFormField(),
          SizedBox(
            height: getProportionateScreenHeight(24),
          ),
          Row(
            children: [
              Checkbox(
                  value: remember,
                  activeColor: kPrimaryColor,
                  onChanged: (value) {
                    setState(() {
                      remember = value;
                    });
                  }),
              GestureDetector(
                  onTap: () {
                    setState(
                      () => {
                        if (remember == false)
                          {remember = true}
                        else
                          {remember = false}
                      },
                    );
                  },
                  child: Text("Remeber me")),
              Spacer(),
              GestureDetector(
                onTap: () => Navigator.popAndPushNamed(
                    context, ForgotPasswordScreen.routeName),
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: kPrimaryColor,
                  ),
                ),
              ),
            ],
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
                _formKey.currentState!.save();
                Navigator.pushNamed(
                    context, LoginSuccessScreen.routeName);
              }
            },
          )
        ],
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
