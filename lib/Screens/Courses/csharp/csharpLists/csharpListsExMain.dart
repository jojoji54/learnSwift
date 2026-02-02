import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/csharpListsEx1005.dart';
import 'Ex/csharpListsEx1006.dart';
import 'Ex/csharpListsEx1007.dart';
import 'Ex/csharpListsEx1008.dart';
import 'Ex/csharpListsEx1009.dart';
import 'Ex/csharpListsEx1010.dart';
import 'Ex/csharpListsEx1011.dart';
import 'Ex/csharpListsEx1012.dart';
import 'Ex/csharpListsEx1013.dart';
import 'Ex/csharpListsEx1014.dart';
import 'Ex/csharpListsEx1015.dart';
import 'Ex/csharpListsEx1016.dart';
import 'Ex/csharpListsEx1017.dart';
import 'Ex/csharpListsEx1018.dart';
import 'Ex/csharpListsEx1019.dart';

class CsharpListsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  CsharpListsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<CsharpListsExMain> createState() => _CsharpListsExMainState();
}

class _CsharpListsExMainState extends State<CsharpListsExMain> {
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
          CsharpListsEx1005(
            title: widget.title,
            id: 1005,
            completed: widget.completed,
          ),
          CsharpListsEx1006(
            title: widget.title,
            id: 1006,
            completed: widget.completed,
          ),
          CsharpListsEx1007(
            title: widget.title,
            id: 1007,
            completed: widget.completed,
          ),
          CsharpListsEx1008(
            title: widget.title,
            id: 1008,
            completed: widget.completed,
          ),
          CsharpListsEx1009(
            title: widget.title,
            id: 1009,
            completed: widget.completed,
          ),
          CsharpListsEx1010(
            title: widget.title,
            id: 1010,
            completed: widget.completed,
          ),
          CsharpListsEx1011(
            title: widget.title,
            id: 1011,
            completed: widget.completed,
          ),
          CsharpListsEx1012(
            title: widget.title,
            id: 1012,
            completed: widget.completed,
          ),
          CsharpListsEx1013(
            title: widget.title,
            id: 1013,
            completed: widget.completed,
          ),
          CsharpListsEx1014(
            title: widget.title,
            id: 1014,
            completed: widget.completed,
          ),
          CsharpListsEx1015(
            title: widget.title,
            id: 1015,
            completed: widget.completed,
          ),
          CsharpListsEx1016(
            title: widget.title,
            id: 1016,
            completed: widget.completed,
          ),
          CsharpListsEx1017(
            title: widget.title,
            id: 1017,
            completed: widget.completed,
          ),
          CsharpListsEx1018(
            title: widget.title,
            id: 1018,
            completed: widget.completed,
          ),
          CsharpListsEx1019(
            title: widget.title,
            id: 1019,
            completed: widget.completed,
          ),
        ],
      ),
    );
  }
}
