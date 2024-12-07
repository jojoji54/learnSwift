import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/SwiftArrays/SwiftArraysEx/ArraysEx76.dart';
import 'package:learnswift/Screens/Courses/SwiftArrays/SwiftArraysEx/ArraysEx77.dart';
import 'package:learnswift/Screens/Courses/SwiftArrays/SwiftArraysEx/ArraysEx78.dart';
import 'package:learnswift/Screens/Courses/SwiftArrays/SwiftArraysEx/ArraysEx79.dart';
import 'package:learnswift/Screens/Courses/SwiftArrays/SwiftArraysEx/ArraysEx80.dart';
import 'package:learnswift/Screens/Courses/SwiftArrays/SwiftArraysEx/ArraysEx81.dart';
import 'package:learnswift/Screens/Courses/SwiftArrays/SwiftArraysEx/ArraysEx82.dart';
import 'package:learnswift/Screens/Courses/SwiftArrays/SwiftArraysEx/ArraysEx83.dart';
import 'package:learnswift/Screens/Courses/SwiftArrays/SwiftArraysEx/ArraysEx84.dart';
import 'package:learnswift/Screens/Courses/SwiftArrays/SwiftArraysEx/ArraysEx85.dart';
import 'package:learnswift/Screens/Courses/SwiftArrays/SwiftArraysEx/ArraysEx86.dart';
import 'package:learnswift/Screens/Courses/SwiftArrays/SwiftArraysEx/ArraysEx87.dart';
import 'package:learnswift/Screens/Courses/SwiftArrays/SwiftArraysEx/ArraysEx88.dart';
import 'package:learnswift/Screens/Courses/SwiftArrays/SwiftArraysEx/ArraysEx89.dart';
import 'package:learnswift/Screens/Courses/SwiftArrays/SwiftArraysEx/ArraysEx90.dart';
import 'package:learnswift/Screens/Courses/SwiftArrays/SwiftArraysEx/ArraysEx91.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class ArraysExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;
  ArraysExMain(
      {super.key,
      required this.id,
      required this.title,
      required this.description,
      required this.completed,
      required this.color1,
      required this.color2});

  @override
  State<ArraysExMain> createState() => _ArraysExMainState();
}

class _ArraysExMainState extends State<ArraysExMain> {
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
                        color: Colors.black),
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
            if (widget.id == 76)
              ArraysEx76(
                  id: 76, title: widget.title, completed: widget.completed),
                    if (widget.id == 77)
              ArraysEx77(
                  id: 77, title: widget.title, completed: widget.completed),
                    if (widget.id == 78)
              ArraysEx78(
                  id: 78, title: widget.title, completed: widget.completed),
                    if (widget.id == 79)
              ArraysEx79(
                  id: 79, title: widget.title, completed: widget.completed),
                    if (widget.id == 80)
              ArraysEx80(
                  id: 80, title: widget.title, completed: widget.completed),
                  if (widget.id == 81)
              ArraysEx81(
                  id: 81, title: widget.title, completed: widget.completed),
                  if (widget.id == 82)
              ArraysEx82(
                  id: 82, title: widget.title, completed: widget.completed),
                  if (widget.id == 83)
              ArraysEx83(
                  id: 83, title: widget.title, completed: widget.completed),
                  if (widget.id == 84)
              ArraysEx84(
                  id: 84, title: widget.title, completed: widget.completed),
                  if (widget.id == 85)
              ArraysEx85(
                  id: 85, title: widget.title, completed: widget.completed),
                  if (widget.id == 86)
              ArraysEx86(
                  id: 86, title: widget.title, completed: widget.completed),
                  if (widget.id == 87)
              ArraysEx87(
                  id: 87, title: widget.title, completed: widget.completed),
                  if (widget.id == 88)
              ArraysEx88(
                  id: 88, title: widget.title, completed: widget.completed),
                  if (widget.id == 89)
              ArraysEx89(
                  id: 89, title: widget.title, completed: widget.completed),
                  if (widget.id == 90)
              ArraysEx90(
                  id: 90, title: widget.title, completed: widget.completed),
                  if (widget.id == 91)
              ArraysEx91(
                  id: 91, title: widget.title, completed: widget.completed),
                  
          ],
        ));
  }
}
