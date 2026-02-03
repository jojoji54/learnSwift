import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/ktConditionalsEx1136.dart';
import 'Ex/ktConditionalsEx1137.dart';
import 'Ex/ktConditionalsEx1138.dart';
import 'Ex/ktConditionalsEx1139.dart';
import 'Ex/ktConditionalsEx1140.dart';
import 'Ex/ktConditionalsEx1141.dart';
import 'Ex/ktConditionalsEx1142.dart';
import 'Ex/ktConditionalsEx1143.dart';
import 'Ex/ktConditionalsEx1144.dart';
import 'Ex/ktConditionalsEx1145.dart';
import 'Ex/ktConditionalsEx1146.dart';
import 'Ex/ktConditionalsEx1147.dart';
import 'Ex/ktConditionalsEx1148.dart';
import 'Ex/ktConditionalsEx1149.dart';
import 'Ex/ktConditionalsEx1150.dart';

class KotlinConditionalsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  KotlinConditionalsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<KotlinConditionalsExMain> createState() => _KotlinConditionalsExMainState();
}

class _KotlinConditionalsExMainState extends State<KotlinConditionalsExMain> {
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
          if (widget.id == 1136)
            KotlinConditionalsEx1136(
              id: 1136,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1137)
            KotlinConditionalsEx1137(
              id: 1137,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1138)
            KotlinConditionalsEx1138(
              id: 1138,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1139)
            KotlinConditionalsEx1139(
              id: 1139,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1140)
            KotlinConditionalsEx1140(
              id: 1140,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1141)
            KotlinConditionalsEx1141(
              id: 1141,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1142)
            KotlinConditionalsEx1142(
              id: 1142,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1143)
            KotlinConditionalsEx1143(
              id: 1143,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1144)
            KotlinConditionalsEx1144(
              id: 1144,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1145)
            KotlinConditionalsEx1145(
              id: 1145,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1146)
            KotlinConditionalsEx1146(
              id: 1146,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1147)
            KotlinConditionalsEx1147(
              id: 1147,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1148)
            KotlinConditionalsEx1148(
              id: 1148,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1149)
            KotlinConditionalsEx1149(
              id: 1149,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1150)
            KotlinConditionalsEx1150(
              id: 1150,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}