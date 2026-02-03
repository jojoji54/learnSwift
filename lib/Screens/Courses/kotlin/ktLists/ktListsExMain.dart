import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/ktListsEx1196.dart';
import 'Ex/ktListsEx1197.dart';
import 'Ex/ktListsEx1198.dart';
import 'Ex/ktListsEx1199.dart';
import 'Ex/ktListsEx1200.dart';
import 'Ex/ktListsEx1201.dart';
import 'Ex/ktListsEx1202.dart';
import 'Ex/ktListsEx1203.dart';
import 'Ex/ktListsEx1204.dart';
import 'Ex/ktListsEx1205.dart';
import 'Ex/ktListsEx1206.dart';
import 'Ex/ktListsEx1207.dart';
import 'Ex/ktListsEx1208.dart';
import 'Ex/ktListsEx1209.dart';
import 'Ex/ktListsEx1210.dart';

class KotlinListsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  KotlinListsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<KotlinListsExMain> createState() => _KotlinListsExMainState();
}

class _KotlinListsExMainState extends State<KotlinListsExMain> {
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
          if (widget.id == 1196)
            KotlinListsEx1196(
              id: 1196,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1197)
            KotlinListsEx1197(
              id: 1197,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1198)
            KotlinListsEx1198(
              id: 1198,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1199)
            KotlinListsEx1199(
              id: 1199,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1200)
            KotlinListsEx1200(
              id: 1200,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1201)
            KotlinListsEx1201(
              id: 1201,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1202)
            KotlinListsEx1202(
              id: 1202,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1203)
            KotlinListsEx1203(
              id: 1203,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1204)
            KotlinListsEx1204(
              id: 1204,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1205)
            KotlinListsEx1205(
              id: 1205,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1206)
            KotlinListsEx1206(
              id: 1206,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1207)
            KotlinListsEx1207(
              id: 1207,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1208)
            KotlinListsEx1208(
              id: 1208,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1209)
            KotlinListsEx1209(
              id: 1209,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1210)
            KotlinListsEx1210(
              id: 1210,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}