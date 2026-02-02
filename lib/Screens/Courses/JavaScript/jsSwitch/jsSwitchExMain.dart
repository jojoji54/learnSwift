import 'package:flutter/material.dart';

import 'package:learnswift/Screens/Courses/JavaScript/jsSwitch/Ex/jsSwitch345.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsSwitch/Ex/jsSwitch346.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsSwitch/Ex/jsSwitch347.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsSwitch/Ex/jsSwitch348.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsSwitch/Ex/jsSwitch349.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsSwitch/Ex/jsSwitch350.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsSwitch/Ex/jsSwitch351.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsSwitch/Ex/jsSwitch352.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsSwitch/Ex/jsSwitch353.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsSwitch/Ex/jsSwitch354.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsSwitch/Ex/jsSwitch355.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsSwitch/Ex/jsSwitch356.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsSwitch/Ex/jsSwitch357.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsSwitch/Ex/jsSwitch358.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsSwitch/Ex/jsSwitch359.dart';

import 'package:learnswift/Widgets/catInfoIcon.dart';

class JsSwitchExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  JsSwitchExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<JsSwitchExMain> createState() => _JsSwitchExMainState();
}

class _JsSwitchExMainState extends State<JsSwitchExMain> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        flexibleSpace: AnimatedContainer(
          duration: const Duration(seconds: 2),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [widget.color1, widget.color2],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        toolbarHeight: 100,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Text(
                  widget.title,
                  style: const TextStyle(
                    fontFamily: 'InconsolataBold',
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: CatInfoIcon(description: widget.description),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          if (widget.id == 345)
            JsSwitchEx345(
              id: 345,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 346)
            JsSwitchEx346(
              id: 346,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 347)
            JsSwitchEx347(
              id: 347,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 348)
            JsSwitchEx348(
              id: 348,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 349)
            JsSwitchEx349(
              id: 349,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 350)
            JsSwitchEx350(
              id: 350,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 351)
            JsSwitchEx351(
              id: 351,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 352)
            JsSwitchEx352(
              id: 352,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 353)
            JsSwitchEx353(
              id: 353,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 354)
            JsSwitchEx354(
              id: 354,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 355)
            JsSwitchEx355(
              id: 355,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 356)
            JsSwitchEx356(
              id: 356,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 357)
            JsSwitchEx357(
              id: 357,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 358)
            JsSwitchEx358(
              id: 358,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 359)
            JsSwitchEx359(
              id: 359,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
