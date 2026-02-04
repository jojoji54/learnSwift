import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetBasics/Ex/aspnetBasicsEx4900.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetBasics/Ex/aspnetBasicsEx4901.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetBasics/Ex/aspnetBasicsEx4902.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetBasics/Ex/aspnetBasicsEx4903.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetBasics/Ex/aspnetBasicsEx4904.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetBasics/Ex/aspnetBasicsEx4905.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetBasics/Ex/aspnetBasicsEx4906.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetBasics/Ex/aspnetBasicsEx4907.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetBasics/Ex/aspnetBasicsEx4908.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetBasics/Ex/aspnetBasicsEx4909.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetBasics/Ex/aspnetBasicsEx4910.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetBasics/Ex/aspnetBasicsEx4911.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetBasics/Ex/aspnetBasicsEx4912.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetBasics/Ex/aspnetBasicsEx4913.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetBasics/Ex/aspnetBasicsEx4914.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class AspnetBasicsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  AspnetBasicsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<AspnetBasicsExMain> createState() => _AspnetBasicsExMainState();
}

class _AspnetBasicsExMainState extends State<AspnetBasicsExMain> {
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

          if (widget.id == 4900)
            AspnetBasicsEx4900(
              id: 4900,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4901)
            AspnetBasicsEx4901(
              id: 4901,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4902)
            AspnetBasicsEx4902(
              id: 4902,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4903)
            AspnetBasicsEx4903(
              id: 4903,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4904)
            AspnetBasicsEx4904(
              id: 4904,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4905)
            AspnetBasicsEx4905(
              id: 4905,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4906)
            AspnetBasicsEx4906(
              id: 4906,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4907)
            AspnetBasicsEx4907(
              id: 4907,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4908)
            AspnetBasicsEx4908(
              id: 4908,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4909)
            AspnetBasicsEx4909(
              id: 4909,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4910)
            AspnetBasicsEx4910(
              id: 4910,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4911)
            AspnetBasicsEx4911(
              id: 4911,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4912)
            AspnetBasicsEx4912(
              id: 4912,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4913)
            AspnetBasicsEx4913(
              id: 4913,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4914)
            AspnetBasicsEx4914(
              id: 4914,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
