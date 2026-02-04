import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelBasics/Ex/laravelBasicsEx4675.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelBasics/Ex/laravelBasicsEx4676.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelBasics/Ex/laravelBasicsEx4677.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelBasics/Ex/laravelBasicsEx4678.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelBasics/Ex/laravelBasicsEx4679.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelBasics/Ex/laravelBasicsEx4680.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelBasics/Ex/laravelBasicsEx4681.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelBasics/Ex/laravelBasicsEx4682.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelBasics/Ex/laravelBasicsEx4683.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelBasics/Ex/laravelBasicsEx4684.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelBasics/Ex/laravelBasicsEx4685.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelBasics/Ex/laravelBasicsEx4686.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelBasics/Ex/laravelBasicsEx4687.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelBasics/Ex/laravelBasicsEx4688.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelBasics/Ex/laravelBasicsEx4689.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class LaravelBasicsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  LaravelBasicsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<LaravelBasicsExMain> createState() => _LaravelBasicsExMainState();
}

class _LaravelBasicsExMainState extends State<LaravelBasicsExMain> {
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

          if (widget.id == 4675)
            LaravelBasicsEx4675(
              id: 4675,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4676)
            LaravelBasicsEx4676(
              id: 4676,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4677)
            LaravelBasicsEx4677(
              id: 4677,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4678)
            LaravelBasicsEx4678(
              id: 4678,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4679)
            LaravelBasicsEx4679(
              id: 4679,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4680)
            LaravelBasicsEx4680(
              id: 4680,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4681)
            LaravelBasicsEx4681(
              id: 4681,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4682)
            LaravelBasicsEx4682(
              id: 4682,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4683)
            LaravelBasicsEx4683(
              id: 4683,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4684)
            LaravelBasicsEx4684(
              id: 4684,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4685)
            LaravelBasicsEx4685(
              id: 4685,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4686)
            LaravelBasicsEx4686(
              id: 4686,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4687)
            LaravelBasicsEx4687(
              id: 4687,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4688)
            LaravelBasicsEx4688(
              id: 4688,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4689)
            LaravelBasicsEx4689(
              id: 4689,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
