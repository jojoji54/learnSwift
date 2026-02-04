import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetControllers/Ex/aspnetControllersEx4945.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetControllers/Ex/aspnetControllersEx4946.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetControllers/Ex/aspnetControllersEx4947.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetControllers/Ex/aspnetControllersEx4948.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetControllers/Ex/aspnetControllersEx4949.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetControllers/Ex/aspnetControllersEx4950.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetControllers/Ex/aspnetControllersEx4951.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetControllers/Ex/aspnetControllersEx4952.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetControllers/Ex/aspnetControllersEx4953.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetControllers/Ex/aspnetControllersEx4954.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetControllers/Ex/aspnetControllersEx4955.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetControllers/Ex/aspnetControllersEx4956.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetControllers/Ex/aspnetControllersEx4957.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetControllers/Ex/aspnetControllersEx4958.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetControllers/Ex/aspnetControllersEx4959.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class AspnetControllersExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  AspnetControllersExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<AspnetControllersExMain> createState() => _AspnetControllersExMainState();
}

class _AspnetControllersExMainState extends State<AspnetControllersExMain> {
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

          if (widget.id == 4945)
            AspnetControllersEx4945(
              id: 4945,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4946)
            AspnetControllersEx4946(
              id: 4946,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4947)
            AspnetControllersEx4947(
              id: 4947,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4948)
            AspnetControllersEx4948(
              id: 4948,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4949)
            AspnetControllersEx4949(
              id: 4949,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4950)
            AspnetControllersEx4950(
              id: 4950,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4951)
            AspnetControllersEx4951(
              id: 4951,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4952)
            AspnetControllersEx4952(
              id: 4952,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4953)
            AspnetControllersEx4953(
              id: 4953,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4954)
            AspnetControllersEx4954(
              id: 4954,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4955)
            AspnetControllersEx4955(
              id: 4955,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4956)
            AspnetControllersEx4956(
              id: 4956,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4957)
            AspnetControllersEx4957(
              id: 4957,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4958)
            AspnetControllersEx4958(
              id: 4958,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4959)
            AspnetControllersEx4959(
              id: 4959,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
