import 'package:flutter/material.dart';
import 'package:flutter_application_1/intro_pageA.dart';
import 'package:flutter_application_1/intro_pageB.dart';
import 'package:flutter_application_1/intro_pageC.dart';

class AuthScreen extends StatelessWidget {
  PageController _pageController = PageController();
  AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        controller: _pageController,
        children: [
          IntroPageA(_pageController),
          IntroPageB(_pageController),
          IntroPageC(_pageController),
        ],
      ),
    );
  }
}
