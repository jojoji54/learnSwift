import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/cbBasicsEx2325.dart';
import 'Ex/cbBasicsEx2326.dart';
import 'Ex/cbBasicsEx2327.dart';
import 'Ex/cbBasicsEx2328.dart';
import 'Ex/cbBasicsEx2329.dart';
import 'Ex/cbBasicsEx2330.dart';
import 'Ex/cbBasicsEx2331.dart';
import 'Ex/cbBasicsEx2332.dart';
import 'Ex/cbBasicsEx2333.dart';
import 'Ex/cbBasicsEx2334.dart';
import 'Ex/cbBasicsEx2335.dart';
import 'Ex/cbBasicsEx2336.dart';
import 'Ex/cbBasicsEx2337.dart';
import 'Ex/cbBasicsEx2338.dart';
import 'Ex/cbBasicsEx2339.dart';

class CbBasicsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  CbBasicsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<CbBasicsExMain> createState() => _CbBasicsExMainState();
}

class _CbBasicsExMainState extends State<CbBasicsExMain> {
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
          if (widget.id == 2325)
            CbBasicsEx2325(
              id: 2325,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2326)
            CbBasicsEx2326(
              id: 2326,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2327)
            CbBasicsEx2327(
              id: 2327,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2328)
            CbBasicsEx2328(
              id: 2328,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2329)
            CbBasicsEx2329(
              id: 2329,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2330)
            CbBasicsEx2330(
              id: 2330,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2331)
            CbBasicsEx2331(
              id: 2331,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2332)
            CbBasicsEx2332(
              id: 2332,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2333)
            CbBasicsEx2333(
              id: 2333,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2334)
            CbBasicsEx2334(
              id: 2334,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2335)
            CbBasicsEx2335(
              id: 2335,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2336)
            CbBasicsEx2336(
              id: 2336,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2337)
            CbBasicsEx2337(
              id: 2337,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2338)
            CbBasicsEx2338(
              id: 2338,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2339)
            CbBasicsEx2339(
              id: 2339,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
