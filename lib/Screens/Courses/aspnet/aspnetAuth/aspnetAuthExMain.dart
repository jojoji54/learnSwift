import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetAuth/Ex/aspnetAuthEx5080.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetAuth/Ex/aspnetAuthEx5081.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetAuth/Ex/aspnetAuthEx5082.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetAuth/Ex/aspnetAuthEx5083.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetAuth/Ex/aspnetAuthEx5084.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetAuth/Ex/aspnetAuthEx5085.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetAuth/Ex/aspnetAuthEx5086.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetAuth/Ex/aspnetAuthEx5087.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetAuth/Ex/aspnetAuthEx5088.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetAuth/Ex/aspnetAuthEx5089.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetAuth/Ex/aspnetAuthEx5090.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetAuth/Ex/aspnetAuthEx5091.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetAuth/Ex/aspnetAuthEx5092.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetAuth/Ex/aspnetAuthEx5093.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetAuth/Ex/aspnetAuthEx5094.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class AspnetAuthExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  AspnetAuthExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<AspnetAuthExMain> createState() => _AspnetAuthExMainState();
}

class _AspnetAuthExMainState extends State<AspnetAuthExMain> {
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

          if (widget.id == 5080)
            AspnetAuthEx5080(
              id: 5080,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5081)
            AspnetAuthEx5081(
              id: 5081,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5082)
            AspnetAuthEx5082(
              id: 5082,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5083)
            AspnetAuthEx5083(
              id: 5083,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5084)
            AspnetAuthEx5084(
              id: 5084,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5085)
            AspnetAuthEx5085(
              id: 5085,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5086)
            AspnetAuthEx5086(
              id: 5086,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5087)
            AspnetAuthEx5087(
              id: 5087,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5088)
            AspnetAuthEx5088(
              id: 5088,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5089)
            AspnetAuthEx5089(
              id: 5089,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5090)
            AspnetAuthEx5090(
              id: 5090,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5091)
            AspnetAuthEx5091(
              id: 5091,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5092)
            AspnetAuthEx5092(
              id: 5092,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5093)
            AspnetAuthEx5093(
              id: 5093,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5094)
            AspnetAuthEx5094(
              id: 5094,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
