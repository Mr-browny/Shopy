import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopy/components/custom_bottom_nav_bar.dart';
import 'package:shopy/constants.dart';
import 'package:shopy/screens/home/home_screen.dart';

import '../../enums.dart';
import 'components/profileScreenBody.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  static String routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Body(),
      bottomNavigationBar: CustomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
