import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/swift/swiftSets/setsEx/SetsEx105.dart';
import 'package:learnswift/Screens/Courses/swift/swiftSets/setsEx/SetsEx106.dart';
import 'package:learnswift/Screens/Courses/swift/swiftSets/setsEx/SetsEx107.dart';
import 'package:learnswift/Screens/Courses/swift/swiftSets/setsEx/SetsEx108.dart';
import 'package:learnswift/Screens/Courses/swift/swiftSets/setsEx/SetsEx109.dart';
import 'package:learnswift/Screens/Courses/swift/swiftSets/setsEx/SetsEx110.dart';
import 'package:learnswift/Screens/Courses/swift/swiftSets/setsEx/SetsEx111.dart';
import 'package:learnswift/Screens/Courses/swift/swiftSets/setsEx/SetsEx112.dart';
import 'package:learnswift/Screens/Courses/swift/swiftSets/setsEx/SetsEx113.dart';
import 'package:learnswift/Screens/Courses/swift/swiftSets/setsEx/SetsEx114.dart';
import 'package:learnswift/Screens/Courses/swift/swiftSets/setsEx/SetsEx115.dart';
import 'package:learnswift/Screens/Courses/swift/swiftSets/setsEx/SetsEx116.dart';
import 'package:learnswift/Screens/Courses/swift/swiftSets/setsEx/SetsEx117.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class SwitchSetsMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;
  SwitchSetsMain(
      {super.key,
      required this.id,
      required this.title,
      required this.description,
      required this.completed,
      required this.color1,
      required this.color2});

  @override
  State<SwitchSetsMain> createState() => _SwitchSetsMainState();
}

class _SwitchSetsMainState extends State<SwitchSetsMain> {
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
          duration: const Duration(seconds: 2), // Duración de la transición
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [widget.color1, widget.color2],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        toolbarHeight: 100, // Define la altura deseada del AppBar
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Text(
                  widget.title,
                  style: TextStyle(
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
              child: CatInfoIcon(
                description: widget.description,
              ), // Aquí añades el ícono de información
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          if (widget.id == 105)
            SetsEx105(
                id: 105, title: widget.title, completed: widget.completed),
          if (widget.id == 106)
            SetsEx106(
                id: 106, title: widget.title, completed: widget.completed),
          if (widget.id == 107)
            SetsEx107(
                id: 107, title: widget.title, completed: widget.completed),
          if (widget.id == 108)
            SetsEx108(
                id: 108, title: widget.title, completed: widget.completed),
          if (widget.id == 109)
            SetsEx109(
                id: 109, title: widget.title, completed: widget.completed),
          if (widget.id == 110)
            SetsEx110(
                id: 110, title: widget.title, completed: widget.completed),
          if (widget.id == 111)
            SetsEx111(
                id: 111, title: widget.title, completed: widget.completed),
          if (widget.id == 112)
            SetsEx112(
                id: 112, title: widget.title, completed: widget.completed),
          if (widget.id == 113)
            SetsEx113(
                id: 113, title: widget.title, completed: widget.completed),
          if (widget.id == 114)
            SetsEx114(
                id: 114, title: widget.title, completed: widget.completed),
          if (widget.id == 115)
            SetsEx115(
                id: 115, title: widget.title, completed: widget.completed),
          if (widget.id == 116)
            SetsEx116(
                id: 116, title: widget.title, completed: widget.completed),
          if (widget.id == 117)
            SetsEx117(
                id: 117, title: widget.title, completed: widget.completed),
        ],
      ),
    );
  }
}
