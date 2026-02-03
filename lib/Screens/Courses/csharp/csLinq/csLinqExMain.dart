import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/csLinqEx1076.dart';
import 'Ex/csLinqEx1077.dart';
import 'Ex/csLinqEx1078.dart';
import 'Ex/csLinqEx1079.dart';
import 'Ex/csLinqEx1080.dart';
import 'Ex/csLinqEx1081.dart';
import 'Ex/csLinqEx1082.dart';
import 'Ex/csLinqEx1083.dart';
import 'Ex/csLinqEx1084.dart';
import 'Ex/csLinqEx1085.dart';
import 'Ex/csLinqEx1086.dart';
import 'Ex/csLinqEx1087.dart';
import 'Ex/csLinqEx1088.dart';
import 'Ex/csLinqEx1089.dart';
import 'Ex/csLinqEx1090.dart';

class CSharpLinqExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  CSharpLinqExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<CSharpLinqExMain> createState() => _CSharpLinqExMainState();
}

class _CSharpLinqExMainState extends State<CSharpLinqExMain> {
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
          if (widget.id == 1076)
            CSharpLinqEx1076(
              id: 1076,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1077)
            CSharpLinqEx1077(
              id: 1077,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1078)
            CSharpLinqEx1078(
              id: 1078,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1079)
            CSharpLinqEx1079(
              id: 1079,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1080)
            CSharpLinqEx1080(
              id: 1080,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1081)
            CSharpLinqEx1081(
              id: 1081,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1082)
            CSharpLinqEx1082(
              id: 1082,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1083)
            CSharpLinqEx1083(
              id: 1083,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1084)
            CSharpLinqEx1084(
              id: 1084,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1085)
            CSharpLinqEx1085(
              id: 1085,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1086)
            CSharpLinqEx1086(
              id: 1086,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1087)
            CSharpLinqEx1087(
              id: 1087,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1088)
            CSharpLinqEx1088(
              id: 1088,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1089)
            CSharpLinqEx1089(
              id: 1089,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1090)
            CSharpLinqEx1090(
              id: 1090,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}