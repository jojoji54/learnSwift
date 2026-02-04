
import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/angular/angularDataBinding/Ex/angularDataBindingEx3345.dart';
import 'package:learnswift/Screens/Courses/angular/angularDataBinding/Ex/angularDataBindingEx3346.dart';
import 'package:learnswift/Screens/Courses/angular/angularDataBinding/Ex/angularDataBindingEx3347.dart';
import 'package:learnswift/Screens/Courses/angular/angularDataBinding/Ex/angularDataBindingEx3348.dart';
import 'package:learnswift/Screens/Courses/angular/angularDataBinding/Ex/angularDataBindingEx3349.dart';
import 'package:learnswift/Screens/Courses/angular/angularDataBinding/Ex/angularDataBindingEx3350.dart';
import 'package:learnswift/Screens/Courses/angular/angularDataBinding/Ex/angularDataBindingEx3351.dart';
import 'package:learnswift/Screens/Courses/angular/angularDataBinding/Ex/angularDataBindingEx3352.dart';
import 'package:learnswift/Screens/Courses/angular/angularDataBinding/Ex/angularDataBindingEx3353.dart';
import 'package:learnswift/Screens/Courses/angular/angularDataBinding/Ex/angularDataBindingEx3354.dart';
import 'package:learnswift/Screens/Courses/angular/angularDataBinding/Ex/angularDataBindingEx3355.dart';
import 'package:learnswift/Screens/Courses/angular/angularDataBinding/Ex/angularDataBindingEx3356.dart';
import 'package:learnswift/Screens/Courses/angular/angularDataBinding/Ex/angularDataBindingEx3357.dart';
import 'package:learnswift/Screens/Courses/angular/angularDataBinding/Ex/angularDataBindingEx3358.dart';
import 'package:learnswift/Screens/Courses/angular/angularDataBinding/Ex/angularDataBindingEx3359.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class AngularDataBindingExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  AngularDataBindingExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<AngularDataBindingExMain> createState() => _AngularDataBindingExMainState();
}

class _AngularDataBindingExMainState extends State<AngularDataBindingExMain> {
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
          if (widget.id == 3345)
            AngularDataBindingEx3345(
              id: 3345,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3346)
            AngularDataBindingEx3346(
              id: 3346,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3347)
            AngularDataBindingEx3347(
              id: 3347,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3348)
            AngularDataBindingEx3348(
              id: 3348,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3349)
            AngularDataBindingEx3349(
              id: 3349,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3350)
            AngularDataBindingEx3350(
              id: 3350,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3351)
            AngularDataBindingEx3351(
              id: 3351,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3352)
            AngularDataBindingEx3352(
              id: 3352,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3353)
            AngularDataBindingEx3353(
              id: 3353,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3354)
            AngularDataBindingEx3354(
              id: 3354,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3355)
            AngularDataBindingEx3355(
              id: 3355,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3356)
            AngularDataBindingEx3356(
              id: 3356,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3357)
            AngularDataBindingEx3357(
              id: 3357,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3358)
            AngularDataBindingEx3358(
              id: 3358,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3359)
            AngularDataBindingEx3359(
              id: 3359,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
