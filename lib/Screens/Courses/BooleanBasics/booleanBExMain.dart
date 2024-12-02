import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/BooleanBasics/bEx/sbEx15.dart';
import 'package:learnswift/Screens/Courses/BooleanBasics/bEx/sbEx16.dart';
import 'package:learnswift/Screens/Courses/BooleanBasics/bEx/sbEx17.dart';
import 'package:learnswift/Screens/Courses/BooleanBasics/bEx/sbEx18.dart';
import 'package:learnswift/Screens/Courses/BooleanBasics/bEx/sbEx19.dart';
import 'package:learnswift/Screens/Courses/BooleanBasics/bEx/sbEx20.dart';
import 'package:learnswift/Screens/Courses/BooleanBasics/bEx/sbEx21.dart';
import 'package:learnswift/Screens/Courses/BooleanBasics/bEx/sbEx22.dart';
import 'package:learnswift/Screens/Courses/BooleanBasics/bEx/sbEx23.dart';
import 'package:learnswift/Screens/Courses/BooleanBasics/bEx/sbEx24.dart';
import 'package:learnswift/Screens/Courses/BooleanBasics/bEx/sbEx25.dart';
import 'package:learnswift/Screens/Courses/BooleanBasics/bEx/sbEx26.dart';
import 'package:learnswift/Screens/Courses/BooleanBasics/bEx/sbEx27.dart';
import 'package:learnswift/Screens/Courses/BooleanBasics/bEx/sbEx28.dart';
import 'package:learnswift/Screens/Courses/BooleanBasics/bEx/sbEx29.dart';
import 'package:learnswift/Screens/Courses/BooleanBasics/bEx/sbEx30.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class BooleanBasicExMain extends StatefulWidget {
 final int id;
  final String title;
  final String description;
  final bool completed;
    Color color1;
  Color color2;
   BooleanBasicExMain(
      {super.key,
      required this.id,
      required this.title,
      required this.description, required this.completed, required this.color1,
      required this.color2});

  @override
  State<BooleanBasicExMain> createState() => _BooleanBasicExMainState();
}

class _BooleanBasicExMainState extends State<BooleanBasicExMain> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar:  AppBar(
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
            if (widget.id == 15)
              BEx15(
                id: 15,
                title: widget.title, completed: widget.completed
              ),
            if (widget.id == 16)
              BEx16(
                id: 16,
                title: widget.title, completed: widget.completed
              ),
            if (widget.id == 17)
              BEx17(
                id: 17,
                title: widget.title, completed: widget.completed
              ),
            if (widget.id == 18)
              BEx18(
                id: 18,
                title: widget.title, completed: widget.completed
              ),
            if (widget.id == 19)
              BEx19(
                id: 19,
                title: widget.title, completed: widget.completed
              ),
            if (widget.id == 20)
              BEx20(
                id: 20,
                title: widget.title, completed: widget.completed
              ),
            if (widget.id == 21)
              BEx21(
                id: 21,
                title: widget.title, completed: widget.completed
              ),
            if (widget.id == 22)
              BEx22(
                id: 22,
                title: widget.title, completed: widget.completed
              ),
            if (widget.id == 23)
              BEx23(
                id: 23,
                title: widget.title, completed: widget.completed
              ),
            if (widget.id == 24)
              BEx24(
                id: 24,
                title: widget.title, completed: widget.completed
              ),
            if (widget.id == 25)
              BEx25(
                id: 25,
                title: widget.title, completed: widget.completed
              ),
            if (widget.id == 26)
              BEx26(
                id: 26,
                title: widget.title, completed: widget.completed
              ),
            if (widget.id == 27)
              BEx27(
                id: 27,
                title: widget.title, completed: widget.completed
              ),
            if (widget.id == 28)
              BEx28(
                id: 28,
                title: widget.title, completed: widget.completed
              ),
            if (widget.id == 29)
              BEx29(
                id: 29,
                title: widget.title, completed: widget.completed
              ),
            if (widget.id == 30)
              BEx30(
                id: 30,
                title: widget.title, completed: widget.completed
              ),
          ],
        ));
  }
}
