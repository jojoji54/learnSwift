import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetMiddleware/Ex/aspnetMiddlewareEx4990.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetMiddleware/Ex/aspnetMiddlewareEx4991.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetMiddleware/Ex/aspnetMiddlewareEx4992.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetMiddleware/Ex/aspnetMiddlewareEx4993.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetMiddleware/Ex/aspnetMiddlewareEx4994.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetMiddleware/Ex/aspnetMiddlewareEx4995.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetMiddleware/Ex/aspnetMiddlewareEx4996.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetMiddleware/Ex/aspnetMiddlewareEx4997.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetMiddleware/Ex/aspnetMiddlewareEx4998.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetMiddleware/Ex/aspnetMiddlewareEx4999.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetMiddleware/Ex/aspnetMiddlewareEx5000.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetMiddleware/Ex/aspnetMiddlewareEx5001.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetMiddleware/Ex/aspnetMiddlewareEx5002.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetMiddleware/Ex/aspnetMiddlewareEx5003.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetMiddleware/Ex/aspnetMiddlewareEx5004.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class AspnetMiddlewareExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  AspnetMiddlewareExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<AspnetMiddlewareExMain> createState() => _AspnetMiddlewareExMainState();
}

class _AspnetMiddlewareExMainState extends State<AspnetMiddlewareExMain> {
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

          if (widget.id == 4990)
            AspnetMiddlewareEx4990(
              id: 4990,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4991)
            AspnetMiddlewareEx4991(
              id: 4991,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4992)
            AspnetMiddlewareEx4992(
              id: 4992,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4993)
            AspnetMiddlewareEx4993(
              id: 4993,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4994)
            AspnetMiddlewareEx4994(
              id: 4994,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4995)
            AspnetMiddlewareEx4995(
              id: 4995,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4996)
            AspnetMiddlewareEx4996(
              id: 4996,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4997)
            AspnetMiddlewareEx4997(
              id: 4997,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4998)
            AspnetMiddlewareEx4998(
              id: 4998,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4999)
            AspnetMiddlewareEx4999(
              id: 4999,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5000)
            AspnetMiddlewareEx5000(
              id: 5000,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5001)
            AspnetMiddlewareEx5001(
              id: 5001,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5002)
            AspnetMiddlewareEx5002(
              id: 5002,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5003)
            AspnetMiddlewareEx5003(
              id: 5003,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5004)
            AspnetMiddlewareEx5004(
              id: 5004,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
