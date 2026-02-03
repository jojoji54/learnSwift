import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/goChannelsEx2310.dart';
import 'Ex/goChannelsEx2311.dart';
import 'Ex/goChannelsEx2312.dart';
import 'Ex/goChannelsEx2313.dart';
import 'Ex/goChannelsEx2314.dart';
import 'Ex/goChannelsEx2315.dart';
import 'Ex/goChannelsEx2316.dart';
import 'Ex/goChannelsEx2317.dart';
import 'Ex/goChannelsEx2318.dart';
import 'Ex/goChannelsEx2319.dart';
import 'Ex/goChannelsEx2320.dart';
import 'Ex/goChannelsEx2321.dart';
import 'Ex/goChannelsEx2322.dart';
import 'Ex/goChannelsEx2323.dart';
import 'Ex/goChannelsEx2324.dart';

class GoChannelsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  GoChannelsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<GoChannelsExMain> createState() => _GoChannelsExMainState();
}

class _GoChannelsExMainState extends State<GoChannelsExMain> {
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
          if (widget.id == 2310)
            GoChannelsEx2310(
              id: 2310,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2311)
            GoChannelsEx2311(
              id: 2311,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2312)
            GoChannelsEx2312(
              id: 2312,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2313)
            GoChannelsEx2313(
              id: 2313,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2314)
            GoChannelsEx2314(
              id: 2314,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2315)
            GoChannelsEx2315(
              id: 2315,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2316)
            GoChannelsEx2316(
              id: 2316,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2317)
            GoChannelsEx2317(
              id: 2317,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2318)
            GoChannelsEx2318(
              id: 2318,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2319)
            GoChannelsEx2319(
              id: 2319,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2320)
            GoChannelsEx2320(
              id: 2320,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2321)
            GoChannelsEx2321(
              id: 2321,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2322)
            GoChannelsEx2322(
              id: 2322,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2323)
            GoChannelsEx2323(
              id: 2323,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2324)
            GoChannelsEx2324(
              id: 2324,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
