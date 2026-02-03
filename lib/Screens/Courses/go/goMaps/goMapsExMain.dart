import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/goMapsEx2205.dart';
import 'Ex/goMapsEx2206.dart';
import 'Ex/goMapsEx2207.dart';
import 'Ex/goMapsEx2208.dart';
import 'Ex/goMapsEx2209.dart';
import 'Ex/goMapsEx2210.dart';
import 'Ex/goMapsEx2211.dart';
import 'Ex/goMapsEx2212.dart';
import 'Ex/goMapsEx2213.dart';
import 'Ex/goMapsEx2214.dart';
import 'Ex/goMapsEx2215.dart';
import 'Ex/goMapsEx2216.dart';
import 'Ex/goMapsEx2217.dart';
import 'Ex/goMapsEx2218.dart';
import 'Ex/goMapsEx2219.dart';

class GoMapsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  GoMapsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<GoMapsExMain> createState() => _GoMapsExMainState();
}

class _GoMapsExMainState extends State<GoMapsExMain> {
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
          if (widget.id == 2205)
            GoMapsEx2205(
              id: 2205,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2206)
            GoMapsEx2206(
              id: 2206,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2207)
            GoMapsEx2207(
              id: 2207,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2208)
            GoMapsEx2208(
              id: 2208,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2209)
            GoMapsEx2209(
              id: 2209,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2210)
            GoMapsEx2210(
              id: 2210,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2211)
            GoMapsEx2211(
              id: 2211,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2212)
            GoMapsEx2212(
              id: 2212,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2213)
            GoMapsEx2213(
              id: 2213,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2214)
            GoMapsEx2214(
              id: 2214,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2215)
            GoMapsEx2215(
              id: 2215,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2216)
            GoMapsEx2216(
              id: 2216,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2217)
            GoMapsEx2217(
              id: 2217,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2218)
            GoMapsEx2218(
              id: 2218,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2219)
            GoMapsEx2219(
              id: 2219,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
