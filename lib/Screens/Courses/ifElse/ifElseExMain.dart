import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:learnswift/Screens/Courses/ifElse/ifElseEx/ifElsEx31.dart';
import 'package:learnswift/Screens/Courses/ifElse/ifElseEx/ifElsEx32.dart';
import 'package:learnswift/Screens/Courses/ifElse/ifElseEx/ifElsEx33.dart';
import 'package:learnswift/Screens/Courses/ifElse/ifElseEx/ifElsEx34.dart';
import 'package:learnswift/Screens/Courses/ifElse/ifElseEx/ifElsEx35.dart';
import 'package:learnswift/Screens/Courses/ifElse/ifElseEx/ifElsEx36.dart';
import 'package:learnswift/Screens/Courses/ifElse/ifElseEx/ifElsEx37.dart';
import 'package:learnswift/Screens/Courses/ifElse/ifElseEx/ifElsEx38.dart';
import 'package:learnswift/Screens/Courses/ifElse/ifElseEx/ifElsEx39.dart';
import 'package:learnswift/Screens/Courses/ifElse/ifElseEx/ifElsEx40.dart';
import 'package:learnswift/Screens/Courses/ifElse/ifElseEx/ifElsEx41.dart';
import 'package:learnswift/Screens/Courses/ifElse/ifElseEx/ifElsEx42.dart';
import 'package:learnswift/Screens/Courses/ifElse/ifElseEx/ifElsEx43.dart';
import 'package:learnswift/Screens/Courses/ifElse/ifElseEx/ifElsEx44.dart';
import 'package:learnswift/Screens/Courses/ifElse/ifElseEx/ifElsEx45.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class IfElseExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  const IfElseExMain(
      {super.key,
      required this.id,
      required this.title,
      required this.description, required this.completed});

  @override
  State<IfElseExMain> createState() => _IfElseExMainState();
}

class _IfElseExMainState extends State<IfElseExMain> {
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
            if (widget.id == 31)
              IfElsEx31(
                id: 31,
                title: widget.title,
              ),
            if (widget.id == 32)
              IfElsEx32(
                id: 32,
                title: widget.title,
              ),
            if (widget.id == 33)
              IfElsEx33(
                id: 33,
                title: widget.title,
              ),
            if (widget.id == 34)
              IfElsEx34(
                id: 34,
                title: widget.title,
              ),
            if (widget.id == 35)
              IfElsEx35(
                id: 35,
                title: widget.title,
              ),
            if (widget.id == 36)
              IfElsEx36(
                id: 36,
                title: widget.title,
              ),
            if (widget.id == 37)
              IfElsEx37(
                id: 37,
                title: widget.title,
              ),
            if (widget.id == 38)
              IfElsEx38(
                id: 38,
                title: widget.title,
              ),
            if (widget.id == 39)
              IfElsEx39(
                id: 39,
                title: widget.title,
              ),
            if (widget.id == 40)
              IfElsEx40(
                id: 40,
                title: widget.title,
              ),
            if (widget.id == 41)
              IfElsEx41(
                id: 41,
                title: widget.title,
              ),
            if (widget.id == 42)
              IfElsEx42(
                id: 42,
                title: widget.title,
              ),
            if (widget.id == 43)
              IfElsEx43(
                id: 43,
                title: widget.title,
              ),
            if (widget.id == 44)
              IfElsEx44(
                id: 44,
                title: widget.title,
              ),
            if (widget.id == 45)
              IfElsEx45(
                id: 45,
                title: widget.title,
              ),
          ],
        ));
  }
}
