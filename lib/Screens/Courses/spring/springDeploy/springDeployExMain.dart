import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/spring/springDeploy/Ex/springDeployEx4410.dart';
import 'package:learnswift/Screens/Courses/spring/springDeploy/Ex/springDeployEx4411.dart';
import 'package:learnswift/Screens/Courses/spring/springDeploy/Ex/springDeployEx4412.dart';
import 'package:learnswift/Screens/Courses/spring/springDeploy/Ex/springDeployEx4413.dart';
import 'package:learnswift/Screens/Courses/spring/springDeploy/Ex/springDeployEx4414.dart';
import 'package:learnswift/Screens/Courses/spring/springDeploy/Ex/springDeployEx4415.dart';
import 'package:learnswift/Screens/Courses/spring/springDeploy/Ex/springDeployEx4416.dart';
import 'package:learnswift/Screens/Courses/spring/springDeploy/Ex/springDeployEx4417.dart';
import 'package:learnswift/Screens/Courses/spring/springDeploy/Ex/springDeployEx4418.dart';
import 'package:learnswift/Screens/Courses/spring/springDeploy/Ex/springDeployEx4419.dart';
import 'package:learnswift/Screens/Courses/spring/springDeploy/Ex/springDeployEx4420.dart';
import 'package:learnswift/Screens/Courses/spring/springDeploy/Ex/springDeployEx4421.dart';
import 'package:learnswift/Screens/Courses/spring/springDeploy/Ex/springDeployEx4422.dart';
import 'package:learnswift/Screens/Courses/spring/springDeploy/Ex/springDeployEx4423.dart';
import 'package:learnswift/Screens/Courses/spring/springDeploy/Ex/springDeployEx4424.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class SpringDeployExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  SpringDeployExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<SpringDeployExMain> createState() => _SpringDeployExMainState();
}

class _SpringDeployExMainState extends State<SpringDeployExMain> {
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

          if (widget.id == 4410)
            SpringDeployEx4410(
              id: 4410,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4411)
            SpringDeployEx4411(
              id: 4411,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4412)
            SpringDeployEx4412(
              id: 4412,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4413)
            SpringDeployEx4413(
              id: 4413,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4414)
            SpringDeployEx4414(
              id: 4414,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4415)
            SpringDeployEx4415(
              id: 4415,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4416)
            SpringDeployEx4416(
              id: 4416,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4417)
            SpringDeployEx4417(
              id: 4417,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4418)
            SpringDeployEx4418(
              id: 4418,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4419)
            SpringDeployEx4419(
              id: 4419,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4420)
            SpringDeployEx4420(
              id: 4420,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4421)
            SpringDeployEx4421(
              id: 4421,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4422)
            SpringDeployEx4422(
              id: 4422,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4423)
            SpringDeployEx4423(
              id: 4423,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4424)
            SpringDeployEx4424(
              id: 4424,
              title: widget.title,
              completed: widget.completed,
            ),

        ],
      ),
    );
  }
}
