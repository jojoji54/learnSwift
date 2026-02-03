import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/cbArithmeticEx2355.dart';
import 'Ex/cbArithmeticEx2356.dart';
import 'Ex/cbArithmeticEx2357.dart';
import 'Ex/cbArithmeticEx2358.dart';
import 'Ex/cbArithmeticEx2359.dart';
import 'Ex/cbArithmeticEx2360.dart';
import 'Ex/cbArithmeticEx2361.dart';
import 'Ex/cbArithmeticEx2362.dart';
import 'Ex/cbArithmeticEx2363.dart';
import 'Ex/cbArithmeticEx2364.dart';
import 'Ex/cbArithmeticEx2365.dart';
import 'Ex/cbArithmeticEx2366.dart';
import 'Ex/cbArithmeticEx2367.dart';
import 'Ex/cbArithmeticEx2368.dart';
import 'Ex/cbArithmeticEx2369.dart';

class CbArithmeticExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  CbArithmeticExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<CbArithmeticExMain> createState() => _CbArithmeticExMainState();
}

class _CbArithmeticExMainState extends State<CbArithmeticExMain> {
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
          if (widget.id == 2355)
            CbArithmeticEx2355(
              id: 2355,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2356)
            CbArithmeticEx2356(
              id: 2356,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2357)
            CbArithmeticEx2357(
              id: 2357,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2358)
            CbArithmeticEx2358(
              id: 2358,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2359)
            CbArithmeticEx2359(
              id: 2359,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2360)
            CbArithmeticEx2360(
              id: 2360,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2361)
            CbArithmeticEx2361(
              id: 2361,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2362)
            CbArithmeticEx2362(
              id: 2362,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2363)
            CbArithmeticEx2363(
              id: 2363,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2364)
            CbArithmeticEx2364(
              id: 2364,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2365)
            CbArithmeticEx2365(
              id: 2365,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2366)
            CbArithmeticEx2366(
              id: 2366,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2367)
            CbArithmeticEx2367(
              id: 2367,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2368)
            CbArithmeticEx2368(
              id: 2368,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2369)
            CbArithmeticEx2369(
              id: 2369,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
