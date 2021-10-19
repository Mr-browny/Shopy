import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 115,
      height: 115,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          CircleAvatar(
            backgroundImage:
                AssetImage('assets/images/Profile Image.png'),
            radius: 50,
          ),
          Positioned(
            bottom: 0,
            right: -12,
            child: SizedBox(
              width: 46,
              height: 46,
              child: MaterialButton(
                onPressed: () {},
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  side: BorderSide(color: Colors.white),
                ),
                color: Color(0xFFF5F6F9),
                child: SvgPicture.asset('assets/icons/Camera Icon.svg'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
