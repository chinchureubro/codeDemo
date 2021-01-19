import 'package:code_demo/cloudscreen.dart';
import 'package:code_demo/emailscreen.dart';
import 'package:code_demo/fifthfile.dart';
import 'package:code_demo/firstPage.dart';
import 'package:code_demo/fourthfile.dart';
import 'package:code_demo/secondFile.dart';
import 'package:code_demo/sixthfile.dart';
import 'package:code_demo/thirdfile.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  int selectedIndex = 0;
  final controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      controller: controller,
      children: [
        FirstPAge(),
        SecondPage(),
        ThirdPage(),
        FourthPage(),
        FifthPage(),
        SixthPage(),
        CloundScreen(),
        EmailScreen(),
      ],
    ));
  }
}
