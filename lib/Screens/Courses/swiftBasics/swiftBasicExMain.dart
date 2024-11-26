import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/swiftBasics/Ex/sbEx1.dart';
import 'package:learnswift/Screens/Courses/swiftBasics/Ex/sbEx10.dart';
import 'package:learnswift/Screens/Courses/swiftBasics/Ex/sbEx11.dart';
import 'package:learnswift/Screens/Courses/swiftBasics/Ex/sbEx12.dart';
import 'package:learnswift/Screens/Courses/swiftBasics/Ex/sbEx13.dart';
import 'package:learnswift/Screens/Courses/swiftBasics/Ex/sbEx14.dart';
import 'package:learnswift/Screens/Courses/swiftBasics/Ex/sbEx15.dart';
import 'package:learnswift/Screens/Courses/swiftBasics/Ex/sbEx2.dart';
import 'package:learnswift/Screens/Courses/swiftBasics/Ex/sbEx3.dart';
import 'package:learnswift/Screens/Courses/swiftBasics/Ex/sbEx4.dart';
import 'package:learnswift/Screens/Courses/swiftBasics/Ex/sbEx5.dart';
import 'package:learnswift/Screens/Courses/swiftBasics/Ex/sbEx6.dart';
import 'package:learnswift/Screens/Courses/swiftBasics/Ex/sbEx7.dart';
import 'package:learnswift/Screens/Courses/swiftBasics/Ex/sbEx8.dart';
import 'package:learnswift/Screens/Courses/swiftBasics/Ex/sbEx9.dart';

class SwiftBasicExMain extends StatefulWidget {
  final int id;
  final String title;
  const SwiftBasicExMain({super.key, required this.id, required this.title});

  @override
  State<SwiftBasicExMain> createState() => _SwiftBasicExMainState();
}

class _SwiftBasicExMainState extends State<SwiftBasicExMain> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          toolbarHeight: 100,
          title: Text(
            widget.title,
            style: const TextStyle(
              fontFamily: 'InconsolataBold',
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        body: Stack(
          children: [
            /*  SizedBox(
              height: MediaQuery.of(context).size.height * 0.9,
              width: MediaQuery.of(context).size.width * 0.9,
              child: ZoomIn(
                child: Lottie.asset(
                  'assets/lottie/buNoTrans.json',
                  fit: BoxFit.cover,
                ),
              ),
            ), */
            if (widget.id == 0)
              SBEx1(
                id: 0,
                title: widget.title,
              ),
            if (widget.id == 1)
              SBEx2(
                id: 1,
                title: widget.title,
              ),
            if (widget.id == 2)
              SBEx3(
                id: 2,
                title: widget.title,
              ),
            if (widget.id == 3)
              SBEx4(
                id: 3,
                title: widget.title,
              ),
            if (widget.id == 4)
              SBEx5(
                id: 4,
                title: widget.title,
              ),
            if (widget.id == 5)
              SBEx6(
                id: 5,
                title: widget.title,
              ),
            if (widget.id == 6)
              SBEx7(
                id: 6,
                title: widget.title,
              ),
            if (widget.id == 7)
              SBEx8(
                id: 7,
                title: widget.title,
              ),
            if (widget.id == 8)
              SBEx9(
                id: 8,
                title: widget.title,
              ),
            if (widget.id == 9)
              SBEx10(
                id: 9,
                title: widget.title,
              ),
            if (widget.id == 10)
              SBEx11(
                id: 10,
                title: widget.title,
              ),
            if (widget.id == 11)
              SBEx12(
                id: 11,
                title: widget.title,
              ),
            if (widget.id == 12)
              SBEx13(
                id: 12,
                title: widget.title,
              ),
            if (widget.id == 13)
              SBEx14(
                id: 13,
                title: widget.title,
              ),
            if (widget.id == 14)
              SBEx15(
                id: 14,
                title: widget.title,
              )
          ],
        ));
  }
}
