import 'package:flutter/material.dart';
import 'package:shopy/components/custom_surfix_icon.dart';
import 'package:shopy/components/default_button.dart';
import 'package:shopy/components/form_error.dart';
import 'package:shopy/constants.dart';
import 'package:shopy/screens/otp/otp_screen.dart';

import '../../../size_config.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({Key? key}) : super(key: key);

  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  List<String> errors = [];
  final _formKey = GlobalKey<FormState>();
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? address;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildFirstNameFormField(),
          SizedBox(
            height: getProportionateScreenHeight(24),
          ),
          buildLastNameFormField(),
          SizedBox(
            height: getProportionateScreenHeight(24),
          ),
          buildPhoneFormField(),
          SizedBox(
            height: getProportionateScreenHeight(24),
          ),
          buildAddressFormField(),
          SizedBox(
            height: getProportionateScreenHeight(24),
          ),
          FormError(errors: errors),
          SizedBox(
            height: SizeConfig.screenHeight * 0.08,
          ),
          DefaultButton(
            text: 'Sign Up',
            press: () {
              if (_formKey.currentState!.validate()) {
                // Save the user, then move straight to dashboard...
                Navigator.pushNamed(context, OtpScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      onSaved: (value) => firstName = value,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kFirstNamelNullError)) {
          setState(() {
            errors.remove(kFirstNamelNullError);
          });
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kFirstNamelNullError)) {
          setState(() {
            errors.add(kFirstNamelNullError);
          });
          return '';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'First Name',
        hintText: 'Enter your first name',
        suffixIcon: CustomSuffix(
          svgIcon: 'assets/icons/User.svg',
        ),
      ),
    );
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      onSaved: (value) => lastName = value,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kLastNamelNullError)) {
          setState(() {
            errors.remove(kLastNamelNullError);
          });
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kLastNamelNullError)) {
          setState(() {
            errors.add(kLastNamelNullError);
          });
          return '';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Last Name',
        hintText: 'Enter your last name',
        suffixIcon: CustomSuffix(
          svgIcon: 'assets/icons/User.svg',
        ),
      ),
    );
  }

  TextFormField buildPhoneFormField() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      onSaved: (value) => lastName = value,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPhoneNumberNullError)) {
          setState(() {
            errors.remove(kPhoneNumberNullError);
          });
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kPhoneNumberNullError)) {
          setState(() {
            errors.add(kPhoneNumberNullError);
          });
          return '';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Phone Number',
        hintText: 'Enter your phone number',
        suffixIcon: CustomSuffix(
          svgIcon: 'assets/icons/Phone.svg',
        ),
      ),
    );
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
      keyboardType: TextInputType.streetAddress,
      onSaved: (value) => lastName = value,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kAddressNullError)) {
          setState(() {
            errors.remove(kAddressNullError);
          });
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kAddressNullError)) {
          setState(() {
            errors.add(kAddressNullError);
          });
          return '';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Address',
        hintText: 'Enter your address',
        suffixIcon: CustomSuffix(
          svgIcon: 'assets/icons/Location point.svg',
        ),
      ),
    );
  }
}
