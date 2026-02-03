import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/csMethodsEx1016.dart';
import 'Ex/csMethodsEx1017.dart';
import 'Ex/csMethodsEx1018.dart';
import 'Ex/csMethodsEx1019.dart';
import 'Ex/csMethodsEx1020.dart';
import 'Ex/csMethodsEx1021.dart';
import 'Ex/csMethodsEx1022.dart';
import 'Ex/csMethodsEx1023.dart';
import 'Ex/csMethodsEx1024.dart';
import 'Ex/csMethodsEx1025.dart';
import 'Ex/csMethodsEx1026.dart';
import 'Ex/csMethodsEx1027.dart';
import 'Ex/csMethodsEx1028.dart';
import 'Ex/csMethodsEx1029.dart';
import 'Ex/csMethodsEx1030.dart';

class CSharpMethodsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  CSharpMethodsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<CSharpMethodsExMain> createState() => _CSharpMethodsExMainState();
}

class _CSharpMethodsExMainState extends State<CSharpMethodsExMain> {
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
          if (widget.id == 1016)
            CSharpMethodsEx1016(
              id: 1016,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1017)
            CSharpMethodsEx1017(
              id: 1017,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1018)
            CSharpMethodsEx1018(
              id: 1018,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1019)
            CSharpMethodsEx1019(
              id: 1019,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1020)
            CSharpMethodsEx1020(
              id: 1020,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1021)
            CSharpMethodsEx1021(
              id: 1021,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1022)
            CSharpMethodsEx1022(
              id: 1022,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1023)
            CSharpMethodsEx1023(
              id: 1023,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1024)
            CSharpMethodsEx1024(
              id: 1024,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1025)
            CSharpMethodsEx1025(
              id: 1025,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1026)
            CSharpMethodsEx1026(
              id: 1026,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1027)
            CSharpMethodsEx1027(
              id: 1027,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1028)
            CSharpMethodsEx1028(
              id: 1028,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1029)
            CSharpMethodsEx1029(
              id: 1029,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1030)
            CSharpMethodsEx1030(
              id: 1030,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}