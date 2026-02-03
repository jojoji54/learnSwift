import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/rbCaseEx1601.dart';
import 'Ex/rbCaseEx1602.dart';
import 'Ex/rbCaseEx1603.dart';
import 'Ex/rbCaseEx1604.dart';
import 'Ex/rbCaseEx1605.dart';
import 'Ex/rbCaseEx1606.dart';
import 'Ex/rbCaseEx1607.dart';
import 'Ex/rbCaseEx1608.dart';
import 'Ex/rbCaseEx1609.dart';
import 'Ex/rbCaseEx1610.dart';
import 'Ex/rbCaseEx1611.dart';
import 'Ex/rbCaseEx1612.dart';
import 'Ex/rbCaseEx1613.dart';
import 'Ex/rbCaseEx1614.dart';
import 'Ex/rbCaseEx1615.dart';

class RubyCaseStatementsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  RubyCaseStatementsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<RubyCaseStatementsExMain> createState() => _RubyCaseStatementsExMainState();
}

class _RubyCaseStatementsExMainState extends State<RubyCaseStatementsExMain> {
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
          if (widget.id == 1601)
            RubyCaseStatementsEx1601(
              id: 1601,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1602)
            RubyCaseStatementsEx1602(
              id: 1602,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1603)
            RubyCaseStatementsEx1603(
              id: 1603,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1604)
            RubyCaseStatementsEx1604(
              id: 1604,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1605)
            RubyCaseStatementsEx1605(
              id: 1605,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1606)
            RubyCaseStatementsEx1606(
              id: 1606,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1607)
            RubyCaseStatementsEx1607(
              id: 1607,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1608)
            RubyCaseStatementsEx1608(
              id: 1608,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1609)
            RubyCaseStatementsEx1609(
              id: 1609,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1610)
            RubyCaseStatementsEx1610(
              id: 1610,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1611)
            RubyCaseStatementsEx1611(
              id: 1611,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1612)
            RubyCaseStatementsEx1612(
              id: 1612,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1613)
            RubyCaseStatementsEx1613(
              id: 1613,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1614)
            RubyCaseStatementsEx1614(
              id: 1614,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1615)
            RubyCaseStatementsEx1615(
              id: 1615,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
