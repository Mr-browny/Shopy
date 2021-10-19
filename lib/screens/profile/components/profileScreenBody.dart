import 'package:flutter/material.dart';
import './profile_picture.dart';
import 'profile_menu.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProfilePicture(),
            SizedBox(
              height: 20,
            ),
            ProfileMenu(
              text: 'My Account',
              icon: 'assets/icons/User Icon.svg',
              press: () {},
            ),
            ProfileMenu(
              text: 'Notifications',
              icon: 'assets/icons/Bell.svg',
              press: () {},
            ),
            ProfileMenu(
              text: 'Settings',
              icon: 'assets/icons/Question mark.svg',
              press: () {},
            ),
            ProfileMenu(
              text: 'Help Center',
              icon: 'assets/icons/Question mark.svg',
              press: () {},
            ),
            ProfileMenu(
              text: 'Logout',
              icon: 'assets/icons/Log out.svg',
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
