import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/cbLoopsEx2400.dart';
import 'Ex/cbLoopsEx2401.dart';
import 'Ex/cbLoopsEx2402.dart';
import 'Ex/cbLoopsEx2403.dart';
import 'Ex/cbLoopsEx2404.dart';
import 'Ex/cbLoopsEx2405.dart';
import 'Ex/cbLoopsEx2406.dart';
import 'Ex/cbLoopsEx2407.dart';
import 'Ex/cbLoopsEx2408.dart';
import 'Ex/cbLoopsEx2409.dart';
import 'Ex/cbLoopsEx2410.dart';
import 'Ex/cbLoopsEx2411.dart';
import 'Ex/cbLoopsEx2412.dart';
import 'Ex/cbLoopsEx2413.dart';
import 'Ex/cbLoopsEx2414.dart';

class CbLoopsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  CbLoopsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<CbLoopsExMain> createState() => _CbLoopsExMainState();
}

class _CbLoopsExMainState extends State<CbLoopsExMain> {
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
          if (widget.id == 2400)
            CbLoopsEx2400(
              id: 2400,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2401)
            CbLoopsEx2401(
              id: 2401,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2402)
            CbLoopsEx2402(
              id: 2402,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2403)
            CbLoopsEx2403(
              id: 2403,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2404)
            CbLoopsEx2404(
              id: 2404,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2405)
            CbLoopsEx2405(
              id: 2405,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2406)
            CbLoopsEx2406(
              id: 2406,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2407)
            CbLoopsEx2407(
              id: 2407,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2408)
            CbLoopsEx2408(
              id: 2408,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2409)
            CbLoopsEx2409(
              id: 2409,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2410)
            CbLoopsEx2410(
              id: 2410,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2411)
            CbLoopsEx2411(
              id: 2411,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2412)
            CbLoopsEx2412(
              id: 2412,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2413)
            CbLoopsEx2413(
              id: 2413,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2414)
            CbLoopsEx2414(
              id: 2414,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
