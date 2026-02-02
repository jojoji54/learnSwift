import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/csharpSwitchEx960.dart';
import 'Ex/csharpSwitchEx961.dart';
import 'Ex/csharpSwitchEx962.dart';
import 'Ex/csharpSwitchEx963.dart';
import 'Ex/csharpSwitchEx964.dart';
import 'Ex/csharpSwitchEx965.dart';
import 'Ex/csharpSwitchEx966.dart';
import 'Ex/csharpSwitchEx967.dart';
import 'Ex/csharpSwitchEx968.dart';
import 'Ex/csharpSwitchEx969.dart';
import 'Ex/csharpSwitchEx970.dart';
import 'Ex/csharpSwitchEx971.dart';
import 'Ex/csharpSwitchEx972.dart';
import 'Ex/csharpSwitchEx973.dart';
import 'Ex/csharpSwitchEx974.dart';

class CsharpSwitchExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  CsharpSwitchExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<CsharpSwitchExMain> createState() => _CsharpSwitchExMainState();
}

class _CsharpSwitchExMainState extends State<CsharpSwitchExMain> {
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
                    fontFamily: "InconsolataBold",
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
      body: ListView(
        children: [
          CsharpSwitchEx960(
            title: widget.title,
            id: 960,
            completed: widget.completed,
          ),
          CsharpSwitchEx961(
            title: widget.title,
            id: 961,
            completed: widget.completed,
          ),
          CsharpSwitchEx962(
            title: widget.title,
            id: 962,
            completed: widget.completed,
          ),
          CsharpSwitchEx963(
            title: widget.title,
            id: 963,
            completed: widget.completed,
          ),
          CsharpSwitchEx964(
            title: widget.title,
            id: 964,
            completed: widget.completed,
          ),
          CsharpSwitchEx965(
            title: widget.title,
            id: 965,
            completed: widget.completed,
          ),
          CsharpSwitchEx966(
            title: widget.title,
            id: 966,
            completed: widget.completed,
          ),
          CsharpSwitchEx967(
            title: widget.title,
            id: 967,
            completed: widget.completed,
          ),
          CsharpSwitchEx968(
            title: widget.title,
            id: 968,
            completed: widget.completed,
          ),
          CsharpSwitchEx969(
            title: widget.title,
            id: 969,
            completed: widget.completed,
          ),
          CsharpSwitchEx970(
            title: widget.title,
            id: 970,
            completed: widget.completed,
          ),
          CsharpSwitchEx971(
            title: widget.title,
            id: 971,
            completed: widget.completed,
          ),
          CsharpSwitchEx972(
            title: widget.title,
            id: 972,
            completed: widget.completed,
          ),
          CsharpSwitchEx973(
            title: widget.title,
            id: 973,
            completed: widget.completed,
          ),
          CsharpSwitchEx974(
            title: widget.title,
            id: 974,
            completed: widget.completed,
          ),
        ],
      ),
    );
  }
}
