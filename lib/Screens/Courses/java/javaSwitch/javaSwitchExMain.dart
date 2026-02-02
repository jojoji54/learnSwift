import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/javaSwitchEx560.dart';
import 'Ex/javaSwitchEx561.dart';
import 'Ex/javaSwitchEx562.dart';
import 'Ex/javaSwitchEx563.dart';
import 'Ex/javaSwitchEx564.dart';
import 'Ex/javaSwitchEx565.dart';
import 'Ex/javaSwitchEx566.dart';
import 'Ex/javaSwitchEx567.dart';
import 'Ex/javaSwitchEx568.dart';
import 'Ex/javaSwitchEx569.dart';
import 'Ex/javaSwitchEx570.dart';
import 'Ex/javaSwitchEx571.dart';
import 'Ex/javaSwitchEx572.dart';
import 'Ex/javaSwitchEx573.dart';
import 'Ex/javaSwitchEx574.dart';

class JavaSwitchExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  JavaSwitchExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<JavaSwitchExMain> createState() => _JavaSwitchExMainState();
}

class _JavaSwitchExMainState extends State<JavaSwitchExMain> {
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
          if (widget.id == 560)
            JavaSwitchEx560(
              id: 560,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 561)
            JavaSwitchEx561(
              id: 561,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 562)
            JavaSwitchEx562(
              id: 562,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 563)
            JavaSwitchEx563(
              id: 563,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 564)
            JavaSwitchEx564(
              id: 564,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 565)
            JavaSwitchEx565(
              id: 565,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 566)
            JavaSwitchEx566(
              id: 566,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 567)
            JavaSwitchEx567(
              id: 567,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 568)
            JavaSwitchEx568(
              id: 568,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 569)
            JavaSwitchEx569(
              id: 569,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 570)
            JavaSwitchEx570(
              id: 570,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 571)
            JavaSwitchEx571(
              id: 571,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 572)
            JavaSwitchEx572(
              id: 572,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 573)
            JavaSwitchEx573(
              id: 573,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 574)
            JavaSwitchEx574(
              id: 574,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
