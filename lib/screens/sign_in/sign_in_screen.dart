import 'package:flutter/material.dart';

// importing components
import '../sign_in/components/signInBody.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);
  static const String routeName = '/sign_in';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Body(),
    );
  }
}
