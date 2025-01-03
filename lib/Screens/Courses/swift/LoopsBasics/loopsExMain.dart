import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/swift/LoopsBasics/LoopsEx/loopsEx61.dart';
import 'package:learnswift/Screens/Courses/swift/LoopsBasics/LoopsEx/loopsEx62.dart';
import 'package:learnswift/Screens/Courses/swift/LoopsBasics/LoopsEx/loopsEx63.dart';
import 'package:learnswift/Screens/Courses/swift/LoopsBasics/LoopsEx/loopsEx64.dart';
import 'package:learnswift/Screens/Courses/swift/LoopsBasics/LoopsEx/loopsEx65.dart';
import 'package:learnswift/Screens/Courses/swift/LoopsBasics/LoopsEx/loopsEx66.dart';
import 'package:learnswift/Screens/Courses/swift/LoopsBasics/LoopsEx/loopsEx67.dart';
import 'package:learnswift/Screens/Courses/swift/LoopsBasics/LoopsEx/loopsEx68.dart';
import 'package:learnswift/Screens/Courses/swift/LoopsBasics/LoopsEx/loopsEx69.dart';
import 'package:learnswift/Screens/Courses/swift/LoopsBasics/LoopsEx/loopsEx70.dart';
import 'package:learnswift/Screens/Courses/swift/LoopsBasics/LoopsEx/loopsEx71.dart';
import 'package:learnswift/Screens/Courses/swift/LoopsBasics/LoopsEx/loopsEx72.dart';
import 'package:learnswift/Screens/Courses/swift/LoopsBasics/LoopsEx/loopsEx73.dart';
import 'package:learnswift/Screens/Courses/swift/LoopsBasics/LoopsEx/loopsEx74.dart';
import 'package:learnswift/Screens/Courses/swift/LoopsBasics/LoopsEx/loopsEx75.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class LoopsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
    Color color1;
  Color color2;
   LoopsExMain(
      {super.key,
      required this.id,
      required this.title,
      required this.description,
      required this.completed, required this.color1,
      required this.color2});

  @override
  State<LoopsExMain> createState() => _LoopsExMainState();
}

class _LoopsExMainState extends State<LoopsExMain> {
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
            if (widget.id == 61)
              LoopsEx61(
                id: 61,
               title: widget.title, completed: widget.completed
              ),
            if (widget.id == 62)
              LoopsEx62(
                id: 62,
                title: widget.title, completed: widget.completed
              ),
            if (widget.id == 63)
              LoopsEx63(
                id: 63,
               title: widget.title, completed: widget.completed
              ),
            if (widget.id == 64)
              LoopsEx64(
                id: 64,
            title: widget.title, completed: widget.completed
              ),
            if (widget.id == 65)
              LoopsEx65(
                id: 65,
               title: widget.title, completed: widget.completed
              ),
            if (widget.id == 66)
              LoopsEx66(
                id: 66,
                title: widget.title, completed: widget.completed
              ),
            if (widget.id == 67)
              LoopsEx67(
                id: 67,
               title: widget.title, completed: widget.completed
              ),
            if (widget.id == 68)
              LoopsEx68(
                id: 68,
                title: widget.title, completed: widget.completed
              ),
            if (widget.id == 69)
              LoopsEx69(
                id: 69,
               title: widget.title, completed: widget.completed
              ),
            if (widget.id == 70)
              LoopsEx70(
                id: 70,
                title: widget.title, completed: widget.completed
              ),
            if (widget.id == 71)
              LoopsEx71(
                id: 71,
                title: widget.title, completed: widget.completed
              ),
            if (widget.id == 72)
              LoopsEx72(
                id: 72,
               title: widget.title, completed: widget.completed
              ),
            if (widget.id == 73)
              LoopsEx73(
                id: 73,
                 title: widget.title, completed: widget.completed
              ),
            if (widget.id == 74)
              LoopsEx74(
                id: 74,
               title: widget.title, completed: widget.completed
              ),
            if (widget.id == 75)
              LoopsEx75(
                id: 75,
               title: widget.title, completed: widget.completed
              ),
          ],
        ));
  }
}
