import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/spring/springRequests/Ex/springRequestsEx4260.dart';
import 'package:learnswift/Screens/Courses/spring/springRequests/Ex/springRequestsEx4261.dart';
import 'package:learnswift/Screens/Courses/spring/springRequests/Ex/springRequestsEx4262.dart';
import 'package:learnswift/Screens/Courses/spring/springRequests/Ex/springRequestsEx4263.dart';
import 'package:learnswift/Screens/Courses/spring/springRequests/Ex/springRequestsEx4264.dart';
import 'package:learnswift/Screens/Courses/spring/springRequests/Ex/springRequestsEx4265.dart';
import 'package:learnswift/Screens/Courses/spring/springRequests/Ex/springRequestsEx4266.dart';
import 'package:learnswift/Screens/Courses/spring/springRequests/Ex/springRequestsEx4267.dart';
import 'package:learnswift/Screens/Courses/spring/springRequests/Ex/springRequestsEx4268.dart';
import 'package:learnswift/Screens/Courses/spring/springRequests/Ex/springRequestsEx4269.dart';
import 'package:learnswift/Screens/Courses/spring/springRequests/Ex/springRequestsEx4270.dart';
import 'package:learnswift/Screens/Courses/spring/springRequests/Ex/springRequestsEx4271.dart';
import 'package:learnswift/Screens/Courses/spring/springRequests/Ex/springRequestsEx4272.dart';
import 'package:learnswift/Screens/Courses/spring/springRequests/Ex/springRequestsEx4273.dart';
import 'package:learnswift/Screens/Courses/spring/springRequests/Ex/springRequestsEx4274.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class SpringRequestsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  SpringRequestsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<SpringRequestsExMain> createState() => _SpringRequestsExMainState();
}

class _SpringRequestsExMainState extends State<SpringRequestsExMain> {
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

          if (widget.id == 4260)
            SpringRequestsEx4260(
              id: 4260,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4261)
            SpringRequestsEx4261(
              id: 4261,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4262)
            SpringRequestsEx4262(
              id: 4262,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4263)
            SpringRequestsEx4263(
              id: 4263,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4264)
            SpringRequestsEx4264(
              id: 4264,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4265)
            SpringRequestsEx4265(
              id: 4265,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4266)
            SpringRequestsEx4266(
              id: 4266,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4267)
            SpringRequestsEx4267(
              id: 4267,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4268)
            SpringRequestsEx4268(
              id: 4268,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4269)
            SpringRequestsEx4269(
              id: 4269,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4270)
            SpringRequestsEx4270(
              id: 4270,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4271)
            SpringRequestsEx4271(
              id: 4271,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4272)
            SpringRequestsEx4272(
              id: 4272,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4273)
            SpringRequestsEx4273(
              id: 4273,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4274)
            SpringRequestsEx4274(
              id: 4274,
              title: widget.title,
              completed: widget.completed,
            ),

        ],
      ),
    );
  }
}
