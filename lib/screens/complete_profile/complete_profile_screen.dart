import 'package:flutter/material.dart';

import 'components/completeProfileBody.dart';

class CompleteProfileScreen extends StatelessWidget {
  const CompleteProfileScreen({Key? key}) : super(key: key);
  static const routeName = '/complete_profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign'),),
      body: Body(),
    );
  }
}
