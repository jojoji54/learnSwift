import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetDI/Ex/aspnetDIEx4975.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetDI/Ex/aspnetDIEx4976.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetDI/Ex/aspnetDIEx4977.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetDI/Ex/aspnetDIEx4978.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetDI/Ex/aspnetDIEx4979.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetDI/Ex/aspnetDIEx4980.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetDI/Ex/aspnetDIEx4981.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetDI/Ex/aspnetDIEx4982.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetDI/Ex/aspnetDIEx4983.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetDI/Ex/aspnetDIEx4984.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetDI/Ex/aspnetDIEx4985.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetDI/Ex/aspnetDIEx4986.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetDI/Ex/aspnetDIEx4987.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetDI/Ex/aspnetDIEx4988.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetDI/Ex/aspnetDIEx4989.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class AspnetDIExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  AspnetDIExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<AspnetDIExMain> createState() => _AspnetDIExMainState();
}

class _AspnetDIExMainState extends State<AspnetDIExMain> {
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

          if (widget.id == 4975)
            AspnetDIEx4975(
              id: 4975,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4976)
            AspnetDIEx4976(
              id: 4976,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4977)
            AspnetDIEx4977(
              id: 4977,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4978)
            AspnetDIEx4978(
              id: 4978,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4979)
            AspnetDIEx4979(
              id: 4979,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4980)
            AspnetDIEx4980(
              id: 4980,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4981)
            AspnetDIEx4981(
              id: 4981,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4982)
            AspnetDIEx4982(
              id: 4982,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4983)
            AspnetDIEx4983(
              id: 4983,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4984)
            AspnetDIEx4984(
              id: 4984,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4985)
            AspnetDIEx4985(
              id: 4985,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4986)
            AspnetDIEx4986(
              id: 4986,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4987)
            AspnetDIEx4987(
              id: 4987,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4988)
            AspnetDIEx4988(
              id: 4988,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4989)
            AspnetDIEx4989(
              id: 4989,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
