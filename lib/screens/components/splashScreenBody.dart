import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../size_config.dart';

import '../../screens/sign_in/sign_in_screen.dart';
import '../../components/default_button.dart';
import 'splash_content.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int _currentPage = 0;
  List<Map<dynamic, dynamic>> splashData = [
    {
      "text": "Welcome to Shopy, Let's shop!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text": "We help people connect with stores\naround Nigeria.",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "We bring exactly what you want\nto your device screen.",
      "image": "assets/images/splash_3.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            // Spacer(),
            SizedBox(
              height: 50,
            ),
            Text(
              'SHOPY',
              style: TextStyle(
                fontSize: getProportionateScreenWidth(50),
                fontWeight: FontWeight.bold,
                color: kPrimaryColor,
              ),
            ),
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    _currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  text: splashData[index]["text"],
                  image: splashData[index]["image"],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    DefaultButton(
                      text: 'Continue',
                      press: () {
                        Navigator.pushNamed(context, SignInScreen.routeName);
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: _currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: _currentPage == index ? kPrimaryColor : Colors.grey[400],
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
