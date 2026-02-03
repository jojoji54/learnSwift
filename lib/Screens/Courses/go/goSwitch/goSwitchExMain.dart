import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/goSwitchEx2160.dart';
import 'Ex/goSwitchEx2161.dart';
import 'Ex/goSwitchEx2162.dart';
import 'Ex/goSwitchEx2163.dart';
import 'Ex/goSwitchEx2164.dart';
import 'Ex/goSwitchEx2165.dart';
import 'Ex/goSwitchEx2166.dart';
import 'Ex/goSwitchEx2167.dart';
import 'Ex/goSwitchEx2168.dart';
import 'Ex/goSwitchEx2169.dart';
import 'Ex/goSwitchEx2170.dart';
import 'Ex/goSwitchEx2171.dart';
import 'Ex/goSwitchEx2172.dart';
import 'Ex/goSwitchEx2173.dart';
import 'Ex/goSwitchEx2174.dart';

class GoSwitchExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  GoSwitchExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<GoSwitchExMain> createState() => _GoSwitchExMainState();
}

class _GoSwitchExMainState extends State<GoSwitchExMain> {
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
          if (widget.id == 2160)
            GoSwitchEx2160(
              id: 2160,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2161)
            GoSwitchEx2161(
              id: 2161,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2162)
            GoSwitchEx2162(
              id: 2162,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2163)
            GoSwitchEx2163(
              id: 2163,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2164)
            GoSwitchEx2164(
              id: 2164,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2165)
            GoSwitchEx2165(
              id: 2165,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2166)
            GoSwitchEx2166(
              id: 2166,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2167)
            GoSwitchEx2167(
              id: 2167,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2168)
            GoSwitchEx2168(
              id: 2168,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2169)
            GoSwitchEx2169(
              id: 2169,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2170)
            GoSwitchEx2170(
              id: 2170,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2171)
            GoSwitchEx2171(
              id: 2171,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2172)
            GoSwitchEx2172(
              id: 2172,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2173)
            GoSwitchEx2173(
              id: 2173,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2174)
            GoSwitchEx2174(
              id: 2174,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
