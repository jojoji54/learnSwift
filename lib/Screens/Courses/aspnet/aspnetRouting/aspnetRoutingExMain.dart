import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetRouting/Ex/aspnetRoutingEx4930.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetRouting/Ex/aspnetRoutingEx4931.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetRouting/Ex/aspnetRoutingEx4932.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetRouting/Ex/aspnetRoutingEx4933.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetRouting/Ex/aspnetRoutingEx4934.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetRouting/Ex/aspnetRoutingEx4935.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetRouting/Ex/aspnetRoutingEx4936.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetRouting/Ex/aspnetRoutingEx4937.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetRouting/Ex/aspnetRoutingEx4938.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetRouting/Ex/aspnetRoutingEx4939.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetRouting/Ex/aspnetRoutingEx4940.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetRouting/Ex/aspnetRoutingEx4941.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetRouting/Ex/aspnetRoutingEx4942.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetRouting/Ex/aspnetRoutingEx4943.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetRouting/Ex/aspnetRoutingEx4944.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class AspnetRoutingExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  AspnetRoutingExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<AspnetRoutingExMain> createState() => _AspnetRoutingExMainState();
}

class _AspnetRoutingExMainState extends State<AspnetRoutingExMain> {
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

          if (widget.id == 4930)
            AspnetRoutingEx4930(
              id: 4930,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4931)
            AspnetRoutingEx4931(
              id: 4931,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4932)
            AspnetRoutingEx4932(
              id: 4932,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4933)
            AspnetRoutingEx4933(
              id: 4933,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4934)
            AspnetRoutingEx4934(
              id: 4934,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4935)
            AspnetRoutingEx4935(
              id: 4935,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4936)
            AspnetRoutingEx4936(
              id: 4936,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4937)
            AspnetRoutingEx4937(
              id: 4937,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4938)
            AspnetRoutingEx4938(
              id: 4938,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4939)
            AspnetRoutingEx4939(
              id: 4939,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4940)
            AspnetRoutingEx4940(
              id: 4940,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4941)
            AspnetRoutingEx4941(
              id: 4941,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4942)
            AspnetRoutingEx4942(
              id: 4942,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4943)
            AspnetRoutingEx4943(
              id: 4943,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4944)
            AspnetRoutingEx4944(
              id: 4944,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
