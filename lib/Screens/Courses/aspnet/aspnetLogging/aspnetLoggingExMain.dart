import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetLogging/Ex/aspnetLoggingEx5020.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetLogging/Ex/aspnetLoggingEx5021.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetLogging/Ex/aspnetLoggingEx5022.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetLogging/Ex/aspnetLoggingEx5023.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetLogging/Ex/aspnetLoggingEx5024.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetLogging/Ex/aspnetLoggingEx5025.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetLogging/Ex/aspnetLoggingEx5026.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetLogging/Ex/aspnetLoggingEx5027.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetLogging/Ex/aspnetLoggingEx5028.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetLogging/Ex/aspnetLoggingEx5029.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetLogging/Ex/aspnetLoggingEx5030.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetLogging/Ex/aspnetLoggingEx5031.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetLogging/Ex/aspnetLoggingEx5032.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetLogging/Ex/aspnetLoggingEx5033.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetLogging/Ex/aspnetLoggingEx5034.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class AspnetLoggingExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  AspnetLoggingExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<AspnetLoggingExMain> createState() => _AspnetLoggingExMainState();
}

class _AspnetLoggingExMainState extends State<AspnetLoggingExMain> {
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

          if (widget.id == 5020)
            AspnetLoggingEx5020(
              id: 5020,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5021)
            AspnetLoggingEx5021(
              id: 5021,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5022)
            AspnetLoggingEx5022(
              id: 5022,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5023)
            AspnetLoggingEx5023(
              id: 5023,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5024)
            AspnetLoggingEx5024(
              id: 5024,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5025)
            AspnetLoggingEx5025(
              id: 5025,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5026)
            AspnetLoggingEx5026(
              id: 5026,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5027)
            AspnetLoggingEx5027(
              id: 5027,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5028)
            AspnetLoggingEx5028(
              id: 5028,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5029)
            AspnetLoggingEx5029(
              id: 5029,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5030)
            AspnetLoggingEx5030(
              id: 5030,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5031)
            AspnetLoggingEx5031(
              id: 5031,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5032)
            AspnetLoggingEx5032(
              id: 5032,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5033)
            AspnetLoggingEx5033(
              id: 5033,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5034)
            AspnetLoggingEx5034(
              id: 5034,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
