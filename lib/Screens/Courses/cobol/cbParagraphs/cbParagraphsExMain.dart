import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/cbParagraphsEx2445.dart';
import 'Ex/cbParagraphsEx2446.dart';
import 'Ex/cbParagraphsEx2447.dart';
import 'Ex/cbParagraphsEx2448.dart';
import 'Ex/cbParagraphsEx2449.dart';
import 'Ex/cbParagraphsEx2450.dart';
import 'Ex/cbParagraphsEx2451.dart';
import 'Ex/cbParagraphsEx2452.dart';
import 'Ex/cbParagraphsEx2453.dart';
import 'Ex/cbParagraphsEx2454.dart';
import 'Ex/cbParagraphsEx2455.dart';
import 'Ex/cbParagraphsEx2456.dart';
import 'Ex/cbParagraphsEx2457.dart';
import 'Ex/cbParagraphsEx2458.dart';
import 'Ex/cbParagraphsEx2459.dart';

class CbParagraphsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  CbParagraphsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<CbParagraphsExMain> createState() => _CbParagraphsExMainState();
}

class _CbParagraphsExMainState extends State<CbParagraphsExMain> {
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
          if (widget.id == 2445)
            CbParagraphsEx2445(
              id: 2445,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2446)
            CbParagraphsEx2446(
              id: 2446,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2447)
            CbParagraphsEx2447(
              id: 2447,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2448)
            CbParagraphsEx2448(
              id: 2448,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2449)
            CbParagraphsEx2449(
              id: 2449,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2450)
            CbParagraphsEx2450(
              id: 2450,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2451)
            CbParagraphsEx2451(
              id: 2451,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2452)
            CbParagraphsEx2452(
              id: 2452,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2453)
            CbParagraphsEx2453(
              id: 2453,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2454)
            CbParagraphsEx2454(
              id: 2454,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2455)
            CbParagraphsEx2455(
              id: 2455,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2456)
            CbParagraphsEx2456(
              id: 2456,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2457)
            CbParagraphsEx2457(
              id: 2457,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2458)
            CbParagraphsEx2458(
              id: 2458,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2459)
            CbParagraphsEx2459(
              id: 2459,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
