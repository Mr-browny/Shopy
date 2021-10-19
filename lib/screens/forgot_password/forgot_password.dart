import 'package:flutter/material.dart';

import 'components/forgotPasswordBody.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);
  static const String routeName = '/forgot_password';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot Password'),
      ),
      body: Body(),
    );
  }
}
