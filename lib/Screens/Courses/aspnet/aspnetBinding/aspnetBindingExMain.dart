import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetBinding/Ex/aspnetBindingEx4960.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetBinding/Ex/aspnetBindingEx4961.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetBinding/Ex/aspnetBindingEx4962.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetBinding/Ex/aspnetBindingEx4963.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetBinding/Ex/aspnetBindingEx4964.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetBinding/Ex/aspnetBindingEx4965.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetBinding/Ex/aspnetBindingEx4966.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetBinding/Ex/aspnetBindingEx4967.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetBinding/Ex/aspnetBindingEx4968.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetBinding/Ex/aspnetBindingEx4969.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetBinding/Ex/aspnetBindingEx4970.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetBinding/Ex/aspnetBindingEx4971.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetBinding/Ex/aspnetBindingEx4972.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetBinding/Ex/aspnetBindingEx4973.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetBinding/Ex/aspnetBindingEx4974.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class AspnetBindingExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  AspnetBindingExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<AspnetBindingExMain> createState() => _AspnetBindingExMainState();
}

class _AspnetBindingExMainState extends State<AspnetBindingExMain> {
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

          if (widget.id == 4960)
            AspnetBindingEx4960(
              id: 4960,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4961)
            AspnetBindingEx4961(
              id: 4961,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4962)
            AspnetBindingEx4962(
              id: 4962,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4963)
            AspnetBindingEx4963(
              id: 4963,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4964)
            AspnetBindingEx4964(
              id: 4964,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4965)
            AspnetBindingEx4965(
              id: 4965,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4966)
            AspnetBindingEx4966(
              id: 4966,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4967)
            AspnetBindingEx4967(
              id: 4967,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4968)
            AspnetBindingEx4968(
              id: 4968,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4969)
            AspnetBindingEx4969(
              id: 4969,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4970)
            AspnetBindingEx4970(
              id: 4970,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4971)
            AspnetBindingEx4971(
              id: 4971,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4972)
            AspnetBindingEx4972(
              id: 4972,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4973)
            AspnetBindingEx4973(
              id: 4973,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4974)
            AspnetBindingEx4974(
              id: 4974,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
