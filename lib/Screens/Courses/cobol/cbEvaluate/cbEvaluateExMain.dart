import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/cbEvaluateEx2385.dart';
import 'Ex/cbEvaluateEx2386.dart';
import 'Ex/cbEvaluateEx2387.dart';
import 'Ex/cbEvaluateEx2388.dart';
import 'Ex/cbEvaluateEx2389.dart';
import 'Ex/cbEvaluateEx2390.dart';
import 'Ex/cbEvaluateEx2391.dart';
import 'Ex/cbEvaluateEx2392.dart';
import 'Ex/cbEvaluateEx2393.dart';
import 'Ex/cbEvaluateEx2394.dart';
import 'Ex/cbEvaluateEx2395.dart';
import 'Ex/cbEvaluateEx2396.dart';
import 'Ex/cbEvaluateEx2397.dart';
import 'Ex/cbEvaluateEx2398.dart';
import 'Ex/cbEvaluateEx2399.dart';

class CbEvaluateExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  CbEvaluateExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<CbEvaluateExMain> createState() => _CbEvaluateExMainState();
}

class _CbEvaluateExMainState extends State<CbEvaluateExMain> {
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
          if (widget.id == 2385)
            CbEvaluateEx2385(
              id: 2385,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2386)
            CbEvaluateEx2386(
              id: 2386,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2387)
            CbEvaluateEx2387(
              id: 2387,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2388)
            CbEvaluateEx2388(
              id: 2388,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2389)
            CbEvaluateEx2389(
              id: 2389,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2390)
            CbEvaluateEx2390(
              id: 2390,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2391)
            CbEvaluateEx2391(
              id: 2391,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2392)
            CbEvaluateEx2392(
              id: 2392,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2393)
            CbEvaluateEx2393(
              id: 2393,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2394)
            CbEvaluateEx2394(
              id: 2394,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2395)
            CbEvaluateEx2395(
              id: 2395,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2396)
            CbEvaluateEx2396(
              id: 2396,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2397)
            CbEvaluateEx2397(
              id: 2397,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2398)
            CbEvaluateEx2398(
              id: 2398,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2399)
            CbEvaluateEx2399(
              id: 2399,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
