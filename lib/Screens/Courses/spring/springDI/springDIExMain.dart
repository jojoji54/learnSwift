import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/spring/springDI/Ex/springDIEx4230.dart';
import 'package:learnswift/Screens/Courses/spring/springDI/Ex/springDIEx4231.dart';
import 'package:learnswift/Screens/Courses/spring/springDI/Ex/springDIEx4232.dart';
import 'package:learnswift/Screens/Courses/spring/springDI/Ex/springDIEx4233.dart';
import 'package:learnswift/Screens/Courses/spring/springDI/Ex/springDIEx4234.dart';
import 'package:learnswift/Screens/Courses/spring/springDI/Ex/springDIEx4235.dart';
import 'package:learnswift/Screens/Courses/spring/springDI/Ex/springDIEx4236.dart';
import 'package:learnswift/Screens/Courses/spring/springDI/Ex/springDIEx4237.dart';
import 'package:learnswift/Screens/Courses/spring/springDI/Ex/springDIEx4238.dart';
import 'package:learnswift/Screens/Courses/spring/springDI/Ex/springDIEx4239.dart';
import 'package:learnswift/Screens/Courses/spring/springDI/Ex/springDIEx4240.dart';
import 'package:learnswift/Screens/Courses/spring/springDI/Ex/springDIEx4241.dart';
import 'package:learnswift/Screens/Courses/spring/springDI/Ex/springDIEx4242.dart';
import 'package:learnswift/Screens/Courses/spring/springDI/Ex/springDIEx4243.dart';
import 'package:learnswift/Screens/Courses/spring/springDI/Ex/springDIEx4244.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class SpringDIExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  SpringDIExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<SpringDIExMain> createState() => _SpringDIExMainState();
}

class _SpringDIExMainState extends State<SpringDIExMain> {
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

          if (widget.id == 4230)
            SpringDIEx4230(
              id: 4230,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4231)
            SpringDIEx4231(
              id: 4231,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4232)
            SpringDIEx4232(
              id: 4232,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4233)
            SpringDIEx4233(
              id: 4233,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4234)
            SpringDIEx4234(
              id: 4234,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4235)
            SpringDIEx4235(
              id: 4235,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4236)
            SpringDIEx4236(
              id: 4236,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4237)
            SpringDIEx4237(
              id: 4237,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4238)
            SpringDIEx4238(
              id: 4238,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4239)
            SpringDIEx4239(
              id: 4239,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4240)
            SpringDIEx4240(
              id: 4240,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4241)
            SpringDIEx4241(
              id: 4241,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4242)
            SpringDIEx4242(
              id: 4242,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4243)
            SpringDIEx4243(
              id: 4243,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4244)
            SpringDIEx4244(
              id: 4244,
              title: widget.title,
              completed: widget.completed,
            ),

        ],
      ),
    );
  }
}
