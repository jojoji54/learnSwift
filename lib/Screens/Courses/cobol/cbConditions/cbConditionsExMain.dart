import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/cbConditionsEx2370.dart';
import 'Ex/cbConditionsEx2371.dart';
import 'Ex/cbConditionsEx2372.dart';
import 'Ex/cbConditionsEx2373.dart';
import 'Ex/cbConditionsEx2374.dart';
import 'Ex/cbConditionsEx2375.dart';
import 'Ex/cbConditionsEx2376.dart';
import 'Ex/cbConditionsEx2377.dart';
import 'Ex/cbConditionsEx2378.dart';
import 'Ex/cbConditionsEx2379.dart';
import 'Ex/cbConditionsEx2380.dart';
import 'Ex/cbConditionsEx2381.dart';
import 'Ex/cbConditionsEx2382.dart';
import 'Ex/cbConditionsEx2383.dart';
import 'Ex/cbConditionsEx2384.dart';

class CbConditionsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  CbConditionsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<CbConditionsExMain> createState() => _CbConditionsExMainState();
}

class _CbConditionsExMainState extends State<CbConditionsExMain> {
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
          if (widget.id == 2370)
            CbConditionsEx2370(
              id: 2370,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2371)
            CbConditionsEx2371(
              id: 2371,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2372)
            CbConditionsEx2372(
              id: 2372,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2373)
            CbConditionsEx2373(
              id: 2373,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2374)
            CbConditionsEx2374(
              id: 2374,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2375)
            CbConditionsEx2375(
              id: 2375,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2376)
            CbConditionsEx2376(
              id: 2376,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2377)
            CbConditionsEx2377(
              id: 2377,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2378)
            CbConditionsEx2378(
              id: 2378,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2379)
            CbConditionsEx2379(
              id: 2379,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2380)
            CbConditionsEx2380(
              id: 2380,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2381)
            CbConditionsEx2381(
              id: 2381,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2382)
            CbConditionsEx2382(
              id: 2382,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2383)
            CbConditionsEx2383(
              id: 2383,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2384)
            CbConditionsEx2384(
              id: 2384,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
