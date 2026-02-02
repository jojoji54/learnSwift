import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/cppSwitchEx760.dart';
import 'Ex/cppSwitchEx761.dart';
import 'Ex/cppSwitchEx762.dart';
import 'Ex/cppSwitchEx763.dart';
import 'Ex/cppSwitchEx764.dart';
import 'Ex/cppSwitchEx765.dart';
import 'Ex/cppSwitchEx766.dart';
import 'Ex/cppSwitchEx767.dart';
import 'Ex/cppSwitchEx768.dart';
import 'Ex/cppSwitchEx769.dart';
import 'Ex/cppSwitchEx770.dart';
import 'Ex/cppSwitchEx771.dart';
import 'Ex/cppSwitchEx772.dart';
import 'Ex/cppSwitchEx773.dart';
import 'Ex/cppSwitchEx774.dart';

class CppSwitchExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  CppSwitchExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<CppSwitchExMain> createState() => _CppSwitchExMainState();
}

class _CppSwitchExMainState extends State<CppSwitchExMain> {
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
          if (widget.id == 760)
            CppSwitchEx760(
              id: 760,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 761)
            CppSwitchEx761(
              id: 761,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 762)
            CppSwitchEx762(
              id: 762,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 763)
            CppSwitchEx763(
              id: 763,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 764)
            CppSwitchEx764(
              id: 764,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 765)
            CppSwitchEx765(
              id: 765,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 766)
            CppSwitchEx766(
              id: 766,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 767)
            CppSwitchEx767(
              id: 767,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 768)
            CppSwitchEx768(
              id: 768,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 769)
            CppSwitchEx769(
              id: 769,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 770)
            CppSwitchEx770(
              id: 770,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 771)
            CppSwitchEx771(
              id: 771,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 772)
            CppSwitchEx772(
              id: 772,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 773)
            CppSwitchEx773(
              id: 773,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 774)
            CppSwitchEx774(
              id: 774,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
