import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/cbReportsEx2535.dart';
import 'Ex/cbReportsEx2536.dart';
import 'Ex/cbReportsEx2537.dart';
import 'Ex/cbReportsEx2538.dart';
import 'Ex/cbReportsEx2539.dart';
import 'Ex/cbReportsEx2540.dart';
import 'Ex/cbReportsEx2541.dart';
import 'Ex/cbReportsEx2542.dart';
import 'Ex/cbReportsEx2543.dart';
import 'Ex/cbReportsEx2544.dart';
import 'Ex/cbReportsEx2545.dart';
import 'Ex/cbReportsEx2546.dart';
import 'Ex/cbReportsEx2547.dart';
import 'Ex/cbReportsEx2548.dart';
import 'Ex/cbReportsEx2549.dart';

class CbReportsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  CbReportsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<CbReportsExMain> createState() => _CbReportsExMainState();
}

class _CbReportsExMainState extends State<CbReportsExMain> {
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
          if (widget.id == 2535)
            CbReportsEx2535(
              id: 2535,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2536)
            CbReportsEx2536(
              id: 2536,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2537)
            CbReportsEx2537(
              id: 2537,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2538)
            CbReportsEx2538(
              id: 2538,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2539)
            CbReportsEx2539(
              id: 2539,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2540)
            CbReportsEx2540(
              id: 2540,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2541)
            CbReportsEx2541(
              id: 2541,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2542)
            CbReportsEx2542(
              id: 2542,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2543)
            CbReportsEx2543(
              id: 2543,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2544)
            CbReportsEx2544(
              id: 2544,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2545)
            CbReportsEx2545(
              id: 2545,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2546)
            CbReportsEx2546(
              id: 2546,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2547)
            CbReportsEx2547(
              id: 2547,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2548)
            CbReportsEx2548(
              id: 2548,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2549)
            CbReportsEx2549(
              id: 2549,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
