import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/SwitchStatements/SwitchEx/SwitchEx46.dart';
import 'package:learnswift/Screens/Courses/SwitchStatements/SwitchEx/SwitchEx47.dart';
import 'package:learnswift/Screens/Courses/SwitchStatements/SwitchEx/SwitchEx48.dart';
import 'package:learnswift/Screens/Courses/SwitchStatements/SwitchEx/SwitchEx49.dart';
import 'package:learnswift/Screens/Courses/SwitchStatements/SwitchEx/SwitchEx50.dart';
import 'package:learnswift/Screens/Courses/SwitchStatements/SwitchEx/SwitchEx51.dart';
import 'package:learnswift/Screens/Courses/SwitchStatements/SwitchEx/SwitchEx52.dart';
import 'package:learnswift/Screens/Courses/SwitchStatements/SwitchEx/SwitchEx53.dart';
import 'package:learnswift/Screens/Courses/SwitchStatements/SwitchEx/SwitchEx54.dart';
import 'package:learnswift/Screens/Courses/SwitchStatements/SwitchEx/SwitchEx55.dart';
import 'package:learnswift/Screens/Courses/SwitchStatements/SwitchEx/SwitchEx56.dart';
import 'package:learnswift/Screens/Courses/SwitchStatements/SwitchEx/SwitchEx57.dart';
import 'package:learnswift/Screens/Courses/SwitchStatements/SwitchEx/SwitchEx58.dart';
import 'package:learnswift/Screens/Courses/SwitchStatements/SwitchEx/SwitchEx59.dart';
import 'package:learnswift/Screens/Courses/SwitchStatements/SwitchEx/SwitchEx60.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class SwitchStatementsMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;
  SwitchStatementsMain(
      {super.key,
      required this.id,
      required this.title,
      required this.description,
      required this.completed,
      required this.color1,
      required this.color2});

  @override
  State<SwitchStatementsMain> createState() => _SwitchStatementsMainState();
}

class _SwitchStatementsMainState extends State<SwitchStatementsMain> {
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
            if (widget.id == 46)
              SwitchEx46(
                  id: 46, title: widget.title, completed: widget.completed),
            if (widget.id == 47)
              SwitchEx47(
                  id: 47, title: widget.title, completed: widget.completed),
            if (widget.id == 48)
              SwitchEx48(
                  id: 48, title: widget.title, completed: widget.completed),
            if (widget.id == 49)
              SwitchEx49(
                  id: 49, title: widget.title, completed: widget.completed),
            if (widget.id == 50)
              SwitchEx50(
                  id: 50, title: widget.title, completed: widget.completed),
            if (widget.id == 51)
              SwitchEx51(
                  id: 51, title: widget.title, completed: widget.completed),
            if (widget.id == 52)
              SwitchEx52(
                  id: 52, title: widget.title, completed: widget.completed),
            if (widget.id == 53)
              SwitchEx53(
                  id: 53, title: widget.title, completed: widget.completed),
            if (widget.id == 54)
              SwitchEx54(
                  id: 54, title: widget.title, completed: widget.completed),
            if (widget.id == 55)
              SwitchEx55(
                  id: 55, title: widget.title, completed: widget.completed),
            if (widget.id == 56)
              SwitchEx56(
                  id: 56, title: widget.title, completed: widget.completed),
            if (widget.id == 57)
              SwitchEx57(
                  id: 57, title: widget.title, completed: widget.completed),
            if (widget.id == 58)
              SwitchEx58(
                  id: 58, title: widget.title, completed: widget.completed),
            if (widget.id == 59)
              SwitchEx59(
                  id: 59, title: widget.title, completed: widget.completed),
            if (widget.id == 60)
              SwitchEx60(
                  id: 60, title: widget.title, completed: widget.completed),
          ],
        ));
  }
}
