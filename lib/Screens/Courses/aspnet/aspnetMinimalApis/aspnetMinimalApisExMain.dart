import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetMinimalApis/Ex/aspnetMinimalApisEx4915.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetMinimalApis/Ex/aspnetMinimalApisEx4916.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetMinimalApis/Ex/aspnetMinimalApisEx4917.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetMinimalApis/Ex/aspnetMinimalApisEx4918.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetMinimalApis/Ex/aspnetMinimalApisEx4919.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetMinimalApis/Ex/aspnetMinimalApisEx4920.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetMinimalApis/Ex/aspnetMinimalApisEx4921.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetMinimalApis/Ex/aspnetMinimalApisEx4922.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetMinimalApis/Ex/aspnetMinimalApisEx4923.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetMinimalApis/Ex/aspnetMinimalApisEx4924.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetMinimalApis/Ex/aspnetMinimalApisEx4925.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetMinimalApis/Ex/aspnetMinimalApisEx4926.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetMinimalApis/Ex/aspnetMinimalApisEx4927.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetMinimalApis/Ex/aspnetMinimalApisEx4928.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetMinimalApis/Ex/aspnetMinimalApisEx4929.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class AspnetMinimalApisExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  AspnetMinimalApisExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<AspnetMinimalApisExMain> createState() => _AspnetMinimalApisExMainState();
}

class _AspnetMinimalApisExMainState extends State<AspnetMinimalApisExMain> {
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

          if (widget.id == 4915)
            AspnetMinimalApisEx4915(
              id: 4915,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4916)
            AspnetMinimalApisEx4916(
              id: 4916,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4917)
            AspnetMinimalApisEx4917(
              id: 4917,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4918)
            AspnetMinimalApisEx4918(
              id: 4918,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4919)
            AspnetMinimalApisEx4919(
              id: 4919,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4920)
            AspnetMinimalApisEx4920(
              id: 4920,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4921)
            AspnetMinimalApisEx4921(
              id: 4921,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4922)
            AspnetMinimalApisEx4922(
              id: 4922,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4923)
            AspnetMinimalApisEx4923(
              id: 4923,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4924)
            AspnetMinimalApisEx4924(
              id: 4924,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4925)
            AspnetMinimalApisEx4925(
              id: 4925,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4926)
            AspnetMinimalApisEx4926(
              id: 4926,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4927)
            AspnetMinimalApisEx4927(
              id: 4927,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4928)
            AspnetMinimalApisEx4928(
              id: 4928,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4929)
            AspnetMinimalApisEx4929(
              id: 4929,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
