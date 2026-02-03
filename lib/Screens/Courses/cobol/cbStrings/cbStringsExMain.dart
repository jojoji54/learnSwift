import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/cbStringsEx2430.dart';
import 'Ex/cbStringsEx2431.dart';
import 'Ex/cbStringsEx2432.dart';
import 'Ex/cbStringsEx2433.dart';
import 'Ex/cbStringsEx2434.dart';
import 'Ex/cbStringsEx2435.dart';
import 'Ex/cbStringsEx2436.dart';
import 'Ex/cbStringsEx2437.dart';
import 'Ex/cbStringsEx2438.dart';
import 'Ex/cbStringsEx2439.dart';
import 'Ex/cbStringsEx2440.dart';
import 'Ex/cbStringsEx2441.dart';
import 'Ex/cbStringsEx2442.dart';
import 'Ex/cbStringsEx2443.dart';
import 'Ex/cbStringsEx2444.dart';

class CbStringsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  CbStringsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<CbStringsExMain> createState() => _CbStringsExMainState();
}

class _CbStringsExMainState extends State<CbStringsExMain> {
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
          if (widget.id == 2430)
            CbStringsEx2430(
              id: 2430,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2431)
            CbStringsEx2431(
              id: 2431,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2432)
            CbStringsEx2432(
              id: 2432,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2433)
            CbStringsEx2433(
              id: 2433,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2434)
            CbStringsEx2434(
              id: 2434,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2435)
            CbStringsEx2435(
              id: 2435,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2436)
            CbStringsEx2436(
              id: 2436,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2437)
            CbStringsEx2437(
              id: 2437,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2438)
            CbStringsEx2438(
              id: 2438,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2439)
            CbStringsEx2439(
              id: 2439,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2440)
            CbStringsEx2440(
              id: 2440,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2441)
            CbStringsEx2441(
              id: 2441,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2442)
            CbStringsEx2442(
              id: 2442,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2443)
            CbStringsEx2443(
              id: 2443,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2444)
            CbStringsEx2444(
              id: 2444,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
