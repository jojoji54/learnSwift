import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/spring/springSecurity/Ex/springSecurityEx4335.dart';
import 'package:learnswift/Screens/Courses/spring/springSecurity/Ex/springSecurityEx4336.dart';
import 'package:learnswift/Screens/Courses/spring/springSecurity/Ex/springSecurityEx4337.dart';
import 'package:learnswift/Screens/Courses/spring/springSecurity/Ex/springSecurityEx4338.dart';
import 'package:learnswift/Screens/Courses/spring/springSecurity/Ex/springSecurityEx4339.dart';
import 'package:learnswift/Screens/Courses/spring/springSecurity/Ex/springSecurityEx4340.dart';
import 'package:learnswift/Screens/Courses/spring/springSecurity/Ex/springSecurityEx4341.dart';
import 'package:learnswift/Screens/Courses/spring/springSecurity/Ex/springSecurityEx4342.dart';
import 'package:learnswift/Screens/Courses/spring/springSecurity/Ex/springSecurityEx4343.dart';
import 'package:learnswift/Screens/Courses/spring/springSecurity/Ex/springSecurityEx4344.dart';
import 'package:learnswift/Screens/Courses/spring/springSecurity/Ex/springSecurityEx4345.dart';
import 'package:learnswift/Screens/Courses/spring/springSecurity/Ex/springSecurityEx4346.dart';
import 'package:learnswift/Screens/Courses/spring/springSecurity/Ex/springSecurityEx4347.dart';
import 'package:learnswift/Screens/Courses/spring/springSecurity/Ex/springSecurityEx4348.dart';
import 'package:learnswift/Screens/Courses/spring/springSecurity/Ex/springSecurityEx4349.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class SpringSecurityExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  SpringSecurityExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<SpringSecurityExMain> createState() => _SpringSecurityExMainState();
}

class _SpringSecurityExMainState extends State<SpringSecurityExMain> {
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

          if (widget.id == 4335)
            SpringSecurityEx4335(
              id: 4335,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4336)
            SpringSecurityEx4336(
              id: 4336,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4337)
            SpringSecurityEx4337(
              id: 4337,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4338)
            SpringSecurityEx4338(
              id: 4338,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4339)
            SpringSecurityEx4339(
              id: 4339,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4340)
            SpringSecurityEx4340(
              id: 4340,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4341)
            SpringSecurityEx4341(
              id: 4341,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4342)
            SpringSecurityEx4342(
              id: 4342,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4343)
            SpringSecurityEx4343(
              id: 4343,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4344)
            SpringSecurityEx4344(
              id: 4344,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4345)
            SpringSecurityEx4345(
              id: 4345,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4346)
            SpringSecurityEx4346(
              id: 4346,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4347)
            SpringSecurityEx4347(
              id: 4347,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4348)
            SpringSecurityEx4348(
              id: 4348,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4349)
            SpringSecurityEx4349(
              id: 4349,
              title: widget.title,
              completed: widget.completed,
            ),

        ],
      ),
    );
  }
}
