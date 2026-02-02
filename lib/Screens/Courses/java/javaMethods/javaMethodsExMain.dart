import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/javaMethodsEx620.dart';
import 'Ex/javaMethodsEx621.dart';
import 'Ex/javaMethodsEx622.dart';
import 'Ex/javaMethodsEx623.dart';
import 'Ex/javaMethodsEx624.dart';
import 'Ex/javaMethodsEx625.dart';
import 'Ex/javaMethodsEx626.dart';
import 'Ex/javaMethodsEx627.dart';
import 'Ex/javaMethodsEx628.dart';
import 'Ex/javaMethodsEx629.dart';
import 'Ex/javaMethodsEx630.dart';
import 'Ex/javaMethodsEx631.dart';
import 'Ex/javaMethodsEx632.dart';
import 'Ex/javaMethodsEx633.dart';
import 'Ex/javaMethodsEx634.dart';

class JavaMethodsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  JavaMethodsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<JavaMethodsExMain> createState() => _JavaMethodsExMainState();
}

class _JavaMethodsExMainState extends State<JavaMethodsExMain> {
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
          if (widget.id == 620)
            JavaMethodsEx620(
              id: 620,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 621)
            JavaMethodsEx621(
              id: 621,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 622)
            JavaMethodsEx622(
              id: 622,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 623)
            JavaMethodsEx623(
              id: 623,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 624)
            JavaMethodsEx624(
              id: 624,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 625)
            JavaMethodsEx625(
              id: 625,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 626)
            JavaMethodsEx626(
              id: 626,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 627)
            JavaMethodsEx627(
              id: 627,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 628)
            JavaMethodsEx628(
              id: 628,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 629)
            JavaMethodsEx629(
              id: 629,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 630)
            JavaMethodsEx630(
              id: 630,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 631)
            JavaMethodsEx631(
              id: 631,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 632)
            JavaMethodsEx632(
              id: 632,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 633)
            JavaMethodsEx633(
              id: 633,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 634)
            JavaMethodsEx634(
              id: 634,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
