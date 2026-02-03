import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/goErrorsEx2280.dart';
import 'Ex/goErrorsEx2281.dart';
import 'Ex/goErrorsEx2282.dart';
import 'Ex/goErrorsEx2283.dart';
import 'Ex/goErrorsEx2284.dart';
import 'Ex/goErrorsEx2285.dart';
import 'Ex/goErrorsEx2286.dart';
import 'Ex/goErrorsEx2287.dart';
import 'Ex/goErrorsEx2288.dart';
import 'Ex/goErrorsEx2289.dart';
import 'Ex/goErrorsEx2290.dart';
import 'Ex/goErrorsEx2291.dart';
import 'Ex/goErrorsEx2292.dart';
import 'Ex/goErrorsEx2293.dart';
import 'Ex/goErrorsEx2294.dart';

class GoErrorsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  GoErrorsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<GoErrorsExMain> createState() => _GoErrorsExMainState();
}

class _GoErrorsExMainState extends State<GoErrorsExMain> {
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
          if (widget.id == 2280)
            GoErrorsEx2280(
              id: 2280,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2281)
            GoErrorsEx2281(
              id: 2281,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2282)
            GoErrorsEx2282(
              id: 2282,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2283)
            GoErrorsEx2283(
              id: 2283,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2284)
            GoErrorsEx2284(
              id: 2284,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2285)
            GoErrorsEx2285(
              id: 2285,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2286)
            GoErrorsEx2286(
              id: 2286,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2287)
            GoErrorsEx2287(
              id: 2287,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2288)
            GoErrorsEx2288(
              id: 2288,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2289)
            GoErrorsEx2289(
              id: 2289,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2290)
            GoErrorsEx2290(
              id: 2290,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2291)
            GoErrorsEx2291(
              id: 2291,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2292)
            GoErrorsEx2292(
              id: 2292,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2293)
            GoErrorsEx2293(
              id: 2293,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2294)
            GoErrorsEx2294(
              id: 2294,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
