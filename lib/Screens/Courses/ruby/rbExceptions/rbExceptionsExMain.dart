import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/rbExceptionsEx1736.dart';
import 'Ex/rbExceptionsEx1737.dart';
import 'Ex/rbExceptionsEx1738.dart';
import 'Ex/rbExceptionsEx1739.dart';
import 'Ex/rbExceptionsEx1740.dart';
import 'Ex/rbExceptionsEx1741.dart';
import 'Ex/rbExceptionsEx1742.dart';
import 'Ex/rbExceptionsEx1743.dart';
import 'Ex/rbExceptionsEx1744.dart';
import 'Ex/rbExceptionsEx1745.dart';
import 'Ex/rbExceptionsEx1746.dart';
import 'Ex/rbExceptionsEx1747.dart';
import 'Ex/rbExceptionsEx1748.dart';
import 'Ex/rbExceptionsEx1749.dart';
import 'Ex/rbExceptionsEx1750.dart';

class RubyExceptionsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  RubyExceptionsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<RubyExceptionsExMain> createState() => _RubyExceptionsExMainState();
}

class _RubyExceptionsExMainState extends State<RubyExceptionsExMain> {
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
          if (widget.id == 1736)
            RubyExceptionsEx1736(
              id: 1736,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1737)
            RubyExceptionsEx1737(
              id: 1737,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1738)
            RubyExceptionsEx1738(
              id: 1738,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1739)
            RubyExceptionsEx1739(
              id: 1739,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1740)
            RubyExceptionsEx1740(
              id: 1740,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1741)
            RubyExceptionsEx1741(
              id: 1741,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1742)
            RubyExceptionsEx1742(
              id: 1742,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1743)
            RubyExceptionsEx1743(
              id: 1743,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1744)
            RubyExceptionsEx1744(
              id: 1744,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1745)
            RubyExceptionsEx1745(
              id: 1745,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1746)
            RubyExceptionsEx1746(
              id: 1746,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1747)
            RubyExceptionsEx1747(
              id: 1747,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1748)
            RubyExceptionsEx1748(
              id: 1748,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1749)
            RubyExceptionsEx1749(
              id: 1749,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1750)
            RubyExceptionsEx1750(
              id: 1750,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
