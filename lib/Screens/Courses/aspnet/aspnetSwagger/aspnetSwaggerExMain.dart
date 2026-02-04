import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetSwagger/Ex/aspnetSwaggerEx5095.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetSwagger/Ex/aspnetSwaggerEx5096.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetSwagger/Ex/aspnetSwaggerEx5097.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetSwagger/Ex/aspnetSwaggerEx5098.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetSwagger/Ex/aspnetSwaggerEx5099.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetSwagger/Ex/aspnetSwaggerEx5100.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetSwagger/Ex/aspnetSwaggerEx5101.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetSwagger/Ex/aspnetSwaggerEx5102.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetSwagger/Ex/aspnetSwaggerEx5103.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetSwagger/Ex/aspnetSwaggerEx5104.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetSwagger/Ex/aspnetSwaggerEx5105.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetSwagger/Ex/aspnetSwaggerEx5106.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetSwagger/Ex/aspnetSwaggerEx5107.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetSwagger/Ex/aspnetSwaggerEx5108.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetSwagger/Ex/aspnetSwaggerEx5109.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class AspnetSwaggerExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  AspnetSwaggerExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<AspnetSwaggerExMain> createState() => _AspnetSwaggerExMainState();
}

class _AspnetSwaggerExMainState extends State<AspnetSwaggerExMain> {
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

          if (widget.id == 5095)
            AspnetSwaggerEx5095(
              id: 5095,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5096)
            AspnetSwaggerEx5096(
              id: 5096,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5097)
            AspnetSwaggerEx5097(
              id: 5097,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5098)
            AspnetSwaggerEx5098(
              id: 5098,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5099)
            AspnetSwaggerEx5099(
              id: 5099,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5100)
            AspnetSwaggerEx5100(
              id: 5100,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5101)
            AspnetSwaggerEx5101(
              id: 5101,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5102)
            AspnetSwaggerEx5102(
              id: 5102,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5103)
            AspnetSwaggerEx5103(
              id: 5103,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5104)
            AspnetSwaggerEx5104(
              id: 5104,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5105)
            AspnetSwaggerEx5105(
              id: 5105,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5106)
            AspnetSwaggerEx5106(
              id: 5106,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5107)
            AspnetSwaggerEx5107(
              id: 5107,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5108)
            AspnetSwaggerEx5108(
              id: 5108,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5109)
            AspnetSwaggerEx5109(
              id: 5109,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
