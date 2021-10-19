import 'package:flutter/material.dart';

import 'components/loginSuccessBody.dart';

class LoginSuccessScreen extends StatelessWidget {
  const LoginSuccessScreen({Key? key}) : super(key: key);
  static String routeName = '/login_success';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // This leading SizedBox, will remove the default back arrow button.
        leading: SizedBox(),
        title: Text('Login Success'),
      ),
      body: Body(),
    );
  }
}
