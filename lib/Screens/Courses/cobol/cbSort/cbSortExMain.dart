import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/cbSortEx2490.dart';
import 'Ex/cbSortEx2491.dart';
import 'Ex/cbSortEx2492.dart';
import 'Ex/cbSortEx2493.dart';
import 'Ex/cbSortEx2494.dart';
import 'Ex/cbSortEx2495.dart';
import 'Ex/cbSortEx2496.dart';
import 'Ex/cbSortEx2497.dart';
import 'Ex/cbSortEx2498.dart';
import 'Ex/cbSortEx2499.dart';
import 'Ex/cbSortEx2500.dart';
import 'Ex/cbSortEx2501.dart';
import 'Ex/cbSortEx2502.dart';
import 'Ex/cbSortEx2503.dart';
import 'Ex/cbSortEx2504.dart';

class CbSortExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  CbSortExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<CbSortExMain> createState() => _CbSortExMainState();
}

class _CbSortExMainState extends State<CbSortExMain> {
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
          if (widget.id == 2490)
            CbSortEx2490(
              id: 2490,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2491)
            CbSortEx2491(
              id: 2491,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2492)
            CbSortEx2492(
              id: 2492,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2493)
            CbSortEx2493(
              id: 2493,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2494)
            CbSortEx2494(
              id: 2494,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2495)
            CbSortEx2495(
              id: 2495,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2496)
            CbSortEx2496(
              id: 2496,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2497)
            CbSortEx2497(
              id: 2497,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2498)
            CbSortEx2498(
              id: 2498,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2499)
            CbSortEx2499(
              id: 2499,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2500)
            CbSortEx2500(
              id: 2500,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2501)
            CbSortEx2501(
              id: 2501,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2502)
            CbSortEx2502(
              id: 2502,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2503)
            CbSortEx2503(
              id: 2503,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2504)
            CbSortEx2504(
              id: 2504,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
