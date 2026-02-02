import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/javaBasicsEx500.dart';
import 'Ex/javaBasicsEx501.dart';
import 'Ex/javaBasicsEx502.dart';
import 'Ex/javaBasicsEx503.dart';
import 'Ex/javaBasicsEx504.dart';
import 'Ex/javaBasicsEx505.dart';
import 'Ex/javaBasicsEx506.dart';
import 'Ex/javaBasicsEx507.dart';
import 'Ex/javaBasicsEx508.dart';
import 'Ex/javaBasicsEx509.dart';
import 'Ex/javaBasicsEx510.dart';
import 'Ex/javaBasicsEx511.dart';
import 'Ex/javaBasicsEx512.dart';
import 'Ex/javaBasicsEx513.dart';
import 'Ex/javaBasicsEx514.dart';

class JavaBasicsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  JavaBasicsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<JavaBasicsExMain> createState() => _JavaBasicsExMainState();
}

class _JavaBasicsExMainState extends State<JavaBasicsExMain> {
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
          if (widget.id == 500)
            JavaBasicsEx500(
              id: 500,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 501)
            JavaBasicsEx501(
              id: 501,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 502)
            JavaBasicsEx502(
              id: 502,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 503)
            JavaBasicsEx503(
              id: 503,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 504)
            JavaBasicsEx504(
              id: 504,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 505)
            JavaBasicsEx505(
              id: 505,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 506)
            JavaBasicsEx506(
              id: 506,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 507)
            JavaBasicsEx507(
              id: 507,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 508)
            JavaBasicsEx508(
              id: 508,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 509)
            JavaBasicsEx509(
              id: 509,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 510)
            JavaBasicsEx510(
              id: 510,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 511)
            JavaBasicsEx511(
              id: 511,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 512)
            JavaBasicsEx512(
              id: 512,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 513)
            JavaBasicsEx513(
              id: 513,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 514)
            JavaBasicsEx514(
              id: 514,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
