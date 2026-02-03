import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/cbFilesEx2475.dart';
import 'Ex/cbFilesEx2476.dart';
import 'Ex/cbFilesEx2477.dart';
import 'Ex/cbFilesEx2478.dart';
import 'Ex/cbFilesEx2479.dart';
import 'Ex/cbFilesEx2480.dart';
import 'Ex/cbFilesEx2481.dart';
import 'Ex/cbFilesEx2482.dart';
import 'Ex/cbFilesEx2483.dart';
import 'Ex/cbFilesEx2484.dart';
import 'Ex/cbFilesEx2485.dart';
import 'Ex/cbFilesEx2486.dart';
import 'Ex/cbFilesEx2487.dart';
import 'Ex/cbFilesEx2488.dart';
import 'Ex/cbFilesEx2489.dart';

class CbFilesExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  CbFilesExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<CbFilesExMain> createState() => _CbFilesExMainState();
}

class _CbFilesExMainState extends State<CbFilesExMain> {
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
          if (widget.id == 2475)
            CbFilesEx2475(
              id: 2475,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2476)
            CbFilesEx2476(
              id: 2476,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2477)
            CbFilesEx2477(
              id: 2477,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2478)
            CbFilesEx2478(
              id: 2478,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2479)
            CbFilesEx2479(
              id: 2479,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2480)
            CbFilesEx2480(
              id: 2480,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2481)
            CbFilesEx2481(
              id: 2481,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2482)
            CbFilesEx2482(
              id: 2482,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2483)
            CbFilesEx2483(
              id: 2483,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2484)
            CbFilesEx2484(
              id: 2484,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2485)
            CbFilesEx2485(
              id: 2485,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2486)
            CbFilesEx2486(
              id: 2486,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2487)
            CbFilesEx2487(
              id: 2487,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2488)
            CbFilesEx2488(
              id: 2488,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2489)
            CbFilesEx2489(
              id: 2489,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
