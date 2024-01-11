import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IntroPageC extends StatelessWidget {
  PageController controller;
  IntroPageC(this.controller, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              '밴러지',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
            Image.asset('assets/images/appintro.png', width: 200, height: 200),
            Text(
              'OCR, 바코드 기술로 간편하게\n찾아보는 음식 성분들!',
              style: TextStyle(fontSize: 13),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextButton(
                  onPressed: () {
                    controller.animateToPage(0,
                        duration: Duration(milliseconds: 700),
                        curve: Curves.easeOut);
                  },
                  child: Text(
                    '다음',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: TextButton.styleFrom(backgroundColor: Colors.green),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
