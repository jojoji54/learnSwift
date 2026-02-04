import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetValidation/Ex/aspnetValidationEx5035.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetValidation/Ex/aspnetValidationEx5036.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetValidation/Ex/aspnetValidationEx5037.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetValidation/Ex/aspnetValidationEx5038.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetValidation/Ex/aspnetValidationEx5039.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetValidation/Ex/aspnetValidationEx5040.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetValidation/Ex/aspnetValidationEx5041.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetValidation/Ex/aspnetValidationEx5042.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetValidation/Ex/aspnetValidationEx5043.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetValidation/Ex/aspnetValidationEx5044.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetValidation/Ex/aspnetValidationEx5045.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetValidation/Ex/aspnetValidationEx5046.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetValidation/Ex/aspnetValidationEx5047.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetValidation/Ex/aspnetValidationEx5048.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetValidation/Ex/aspnetValidationEx5049.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class AspnetValidationExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  AspnetValidationExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<AspnetValidationExMain> createState() => _AspnetValidationExMainState();
}

class _AspnetValidationExMainState extends State<AspnetValidationExMain> {
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

          if (widget.id == 5035)
            AspnetValidationEx5035(
              id: 5035,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5036)
            AspnetValidationEx5036(
              id: 5036,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5037)
            AspnetValidationEx5037(
              id: 5037,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5038)
            AspnetValidationEx5038(
              id: 5038,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5039)
            AspnetValidationEx5039(
              id: 5039,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5040)
            AspnetValidationEx5040(
              id: 5040,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5041)
            AspnetValidationEx5041(
              id: 5041,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5042)
            AspnetValidationEx5042(
              id: 5042,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5043)
            AspnetValidationEx5043(
              id: 5043,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5044)
            AspnetValidationEx5044(
              id: 5044,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5045)
            AspnetValidationEx5045(
              id: 5045,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5046)
            AspnetValidationEx5046(
              id: 5046,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5047)
            AspnetValidationEx5047(
              id: 5047,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5048)
            AspnetValidationEx5048(
              id: 5048,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5049)
            AspnetValidationEx5049(
              id: 5049,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
