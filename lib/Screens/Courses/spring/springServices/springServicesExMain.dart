import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/spring/springServices/Ex/springServicesEx4275.dart';
import 'package:learnswift/Screens/Courses/spring/springServices/Ex/springServicesEx4276.dart';
import 'package:learnswift/Screens/Courses/spring/springServices/Ex/springServicesEx4277.dart';
import 'package:learnswift/Screens/Courses/spring/springServices/Ex/springServicesEx4278.dart';
import 'package:learnswift/Screens/Courses/spring/springServices/Ex/springServicesEx4279.dart';
import 'package:learnswift/Screens/Courses/spring/springServices/Ex/springServicesEx4280.dart';
import 'package:learnswift/Screens/Courses/spring/springServices/Ex/springServicesEx4281.dart';
import 'package:learnswift/Screens/Courses/spring/springServices/Ex/springServicesEx4282.dart';
import 'package:learnswift/Screens/Courses/spring/springServices/Ex/springServicesEx4283.dart';
import 'package:learnswift/Screens/Courses/spring/springServices/Ex/springServicesEx4284.dart';
import 'package:learnswift/Screens/Courses/spring/springServices/Ex/springServicesEx4285.dart';
import 'package:learnswift/Screens/Courses/spring/springServices/Ex/springServicesEx4286.dart';
import 'package:learnswift/Screens/Courses/spring/springServices/Ex/springServicesEx4287.dart';
import 'package:learnswift/Screens/Courses/spring/springServices/Ex/springServicesEx4288.dart';
import 'package:learnswift/Screens/Courses/spring/springServices/Ex/springServicesEx4289.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class SpringServicesExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  SpringServicesExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<SpringServicesExMain> createState() => _SpringServicesExMainState();
}

class _SpringServicesExMainState extends State<SpringServicesExMain> {
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

          if (widget.id == 4275)
            SpringServicesEx4275(
              id: 4275,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4276)
            SpringServicesEx4276(
              id: 4276,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4277)
            SpringServicesEx4277(
              id: 4277,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4278)
            SpringServicesEx4278(
              id: 4278,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4279)
            SpringServicesEx4279(
              id: 4279,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4280)
            SpringServicesEx4280(
              id: 4280,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4281)
            SpringServicesEx4281(
              id: 4281,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4282)
            SpringServicesEx4282(
              id: 4282,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4283)
            SpringServicesEx4283(
              id: 4283,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4284)
            SpringServicesEx4284(
              id: 4284,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4285)
            SpringServicesEx4285(
              id: 4285,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4286)
            SpringServicesEx4286(
              id: 4286,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4287)
            SpringServicesEx4287(
              id: 4287,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4288)
            SpringServicesEx4288(
              id: 4288,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4289)
            SpringServicesEx4289(
              id: 4289,
              title: widget.title,
              completed: widget.completed,
            ),

        ],
      ),
    );
  }
}
