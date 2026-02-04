import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/spring/springBasics/Ex/springBasicsEx4200.dart';
import 'package:learnswift/Screens/Courses/spring/springBasics/Ex/springBasicsEx4201.dart';
import 'package:learnswift/Screens/Courses/spring/springBasics/Ex/springBasicsEx4202.dart';
import 'package:learnswift/Screens/Courses/spring/springBasics/Ex/springBasicsEx4203.dart';
import 'package:learnswift/Screens/Courses/spring/springBasics/Ex/springBasicsEx4204.dart';
import 'package:learnswift/Screens/Courses/spring/springBasics/Ex/springBasicsEx4205.dart';
import 'package:learnswift/Screens/Courses/spring/springBasics/Ex/springBasicsEx4206.dart';
import 'package:learnswift/Screens/Courses/spring/springBasics/Ex/springBasicsEx4207.dart';
import 'package:learnswift/Screens/Courses/spring/springBasics/Ex/springBasicsEx4208.dart';
import 'package:learnswift/Screens/Courses/spring/springBasics/Ex/springBasicsEx4209.dart';
import 'package:learnswift/Screens/Courses/spring/springBasics/Ex/springBasicsEx4210.dart';
import 'package:learnswift/Screens/Courses/spring/springBasics/Ex/springBasicsEx4211.dart';
import 'package:learnswift/Screens/Courses/spring/springBasics/Ex/springBasicsEx4212.dart';
import 'package:learnswift/Screens/Courses/spring/springBasics/Ex/springBasicsEx4213.dart';
import 'package:learnswift/Screens/Courses/spring/springBasics/Ex/springBasicsEx4214.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class SpringBasicsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  SpringBasicsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<SpringBasicsExMain> createState() => _SpringBasicsExMainState();
}

class _SpringBasicsExMainState extends State<SpringBasicsExMain> {
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

          if (widget.id == 4200)
            SpringBasicsEx4200(
              id: 4200,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4201)
            SpringBasicsEx4201(
              id: 4201,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4202)
            SpringBasicsEx4202(
              id: 4202,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4203)
            SpringBasicsEx4203(
              id: 4203,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4204)
            SpringBasicsEx4204(
              id: 4204,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4205)
            SpringBasicsEx4205(
              id: 4205,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4206)
            SpringBasicsEx4206(
              id: 4206,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4207)
            SpringBasicsEx4207(
              id: 4207,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4208)
            SpringBasicsEx4208(
              id: 4208,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4209)
            SpringBasicsEx4209(
              id: 4209,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4210)
            SpringBasicsEx4210(
              id: 4210,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4211)
            SpringBasicsEx4211(
              id: 4211,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4212)
            SpringBasicsEx4212(
              id: 4212,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4213)
            SpringBasicsEx4213(
              id: 4213,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4214)
            SpringBasicsEx4214(
              id: 4214,
              title: widget.title,
              completed: widget.completed,
            ),

        ],
      ),
    );
  }
}
