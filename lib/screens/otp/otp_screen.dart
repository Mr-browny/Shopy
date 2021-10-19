import 'package:flutter/material.dart';

import 'components/otpScreenBody.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);
  static String routeName = '/ot_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('OTP VERIFICATION'),),
      body: Body(),
    );
  }
}
