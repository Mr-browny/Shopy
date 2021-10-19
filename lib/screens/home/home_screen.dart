import 'package:flutter/material.dart';
import 'package:shopy/components/custom_bottom_nav_bar.dart';

import '../../enums.dart';
import 'components/homeScreenBody.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomNavBar(selectedMenu: MenuState.home),
    );
  }
}
