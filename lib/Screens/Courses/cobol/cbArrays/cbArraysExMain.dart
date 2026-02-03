import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/cbArraysEx2415.dart';
import 'Ex/cbArraysEx2416.dart';
import 'Ex/cbArraysEx2417.dart';
import 'Ex/cbArraysEx2418.dart';
import 'Ex/cbArraysEx2419.dart';
import 'Ex/cbArraysEx2420.dart';
import 'Ex/cbArraysEx2421.dart';
import 'Ex/cbArraysEx2422.dart';
import 'Ex/cbArraysEx2423.dart';
import 'Ex/cbArraysEx2424.dart';
import 'Ex/cbArraysEx2425.dart';
import 'Ex/cbArraysEx2426.dart';
import 'Ex/cbArraysEx2427.dart';
import 'Ex/cbArraysEx2428.dart';
import 'Ex/cbArraysEx2429.dart';

class CbArraysExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  CbArraysExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<CbArraysExMain> createState() => _CbArraysExMainState();
}

class _CbArraysExMainState extends State<CbArraysExMain> {
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
          if (widget.id == 2415)
            CbArraysEx2415(
              id: 2415,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2416)
            CbArraysEx2416(
              id: 2416,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2417)
            CbArraysEx2417(
              id: 2417,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2418)
            CbArraysEx2418(
              id: 2418,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2419)
            CbArraysEx2419(
              id: 2419,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2420)
            CbArraysEx2420(
              id: 2420,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2421)
            CbArraysEx2421(
              id: 2421,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2422)
            CbArraysEx2422(
              id: 2422,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2423)
            CbArraysEx2423(
              id: 2423,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2424)
            CbArraysEx2424(
              id: 2424,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2425)
            CbArraysEx2425(
              id: 2425,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2426)
            CbArraysEx2426(
              id: 2426,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2427)
            CbArraysEx2427(
              id: 2427,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2428)
            CbArraysEx2428(
              id: 2428,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2429)
            CbArraysEx2429(
              id: 2429,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
