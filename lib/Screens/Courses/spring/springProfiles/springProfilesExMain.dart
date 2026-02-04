import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/spring/springProfiles/Ex/springProfilesEx4395.dart';
import 'package:learnswift/Screens/Courses/spring/springProfiles/Ex/springProfilesEx4396.dart';
import 'package:learnswift/Screens/Courses/spring/springProfiles/Ex/springProfilesEx4397.dart';
import 'package:learnswift/Screens/Courses/spring/springProfiles/Ex/springProfilesEx4398.dart';
import 'package:learnswift/Screens/Courses/spring/springProfiles/Ex/springProfilesEx4399.dart';
import 'package:learnswift/Screens/Courses/spring/springProfiles/Ex/springProfilesEx4400.dart';
import 'package:learnswift/Screens/Courses/spring/springProfiles/Ex/springProfilesEx4401.dart';
import 'package:learnswift/Screens/Courses/spring/springProfiles/Ex/springProfilesEx4402.dart';
import 'package:learnswift/Screens/Courses/spring/springProfiles/Ex/springProfilesEx4403.dart';
import 'package:learnswift/Screens/Courses/spring/springProfiles/Ex/springProfilesEx4404.dart';
import 'package:learnswift/Screens/Courses/spring/springProfiles/Ex/springProfilesEx4405.dart';
import 'package:learnswift/Screens/Courses/spring/springProfiles/Ex/springProfilesEx4406.dart';
import 'package:learnswift/Screens/Courses/spring/springProfiles/Ex/springProfilesEx4407.dart';
import 'package:learnswift/Screens/Courses/spring/springProfiles/Ex/springProfilesEx4408.dart';
import 'package:learnswift/Screens/Courses/spring/springProfiles/Ex/springProfilesEx4409.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class SpringProfilesExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  SpringProfilesExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<SpringProfilesExMain> createState() => _SpringProfilesExMainState();
}

class _SpringProfilesExMainState extends State<SpringProfilesExMain> {
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

          if (widget.id == 4395)
            SpringProfilesEx4395(
              id: 4395,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4396)
            SpringProfilesEx4396(
              id: 4396,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4397)
            SpringProfilesEx4397(
              id: 4397,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4398)
            SpringProfilesEx4398(
              id: 4398,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4399)
            SpringProfilesEx4399(
              id: 4399,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4400)
            SpringProfilesEx4400(
              id: 4400,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4401)
            SpringProfilesEx4401(
              id: 4401,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4402)
            SpringProfilesEx4402(
              id: 4402,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4403)
            SpringProfilesEx4403(
              id: 4403,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4404)
            SpringProfilesEx4404(
              id: 4404,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4405)
            SpringProfilesEx4405(
              id: 4405,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4406)
            SpringProfilesEx4406(
              id: 4406,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4407)
            SpringProfilesEx4407(
              id: 4407,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4408)
            SpringProfilesEx4408(
              id: 4408,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4409)
            SpringProfilesEx4409(
              id: 4409,
              title: widget.title,
              completed: widget.completed,
            ),

        ],
      ),
    );
  }
}
