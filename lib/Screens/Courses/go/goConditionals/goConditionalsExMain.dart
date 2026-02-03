import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/goConditionalsEx2145.dart';
import 'Ex/goConditionalsEx2146.dart';
import 'Ex/goConditionalsEx2147.dart';
import 'Ex/goConditionalsEx2148.dart';
import 'Ex/goConditionalsEx2149.dart';
import 'Ex/goConditionalsEx2150.dart';
import 'Ex/goConditionalsEx2151.dart';
import 'Ex/goConditionalsEx2152.dart';
import 'Ex/goConditionalsEx2153.dart';
import 'Ex/goConditionalsEx2154.dart';
import 'Ex/goConditionalsEx2155.dart';
import 'Ex/goConditionalsEx2156.dart';
import 'Ex/goConditionalsEx2157.dart';
import 'Ex/goConditionalsEx2158.dart';
import 'Ex/goConditionalsEx2159.dart';

class GoConditionalsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  GoConditionalsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<GoConditionalsExMain> createState() => _GoConditionalsExMainState();
}

class _GoConditionalsExMainState extends State<GoConditionalsExMain> {
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
          if (widget.id == 2145)
            GoConditionalsEx2145(
              id: 2145,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2146)
            GoConditionalsEx2146(
              id: 2146,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2147)
            GoConditionalsEx2147(
              id: 2147,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2148)
            GoConditionalsEx2148(
              id: 2148,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2149)
            GoConditionalsEx2149(
              id: 2149,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2150)
            GoConditionalsEx2150(
              id: 2150,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2151)
            GoConditionalsEx2151(
              id: 2151,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2152)
            GoConditionalsEx2152(
              id: 2152,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2153)
            GoConditionalsEx2153(
              id: 2153,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2154)
            GoConditionalsEx2154(
              id: 2154,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2155)
            GoConditionalsEx2155(
              id: 2155,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2156)
            GoConditionalsEx2156(
              id: 2156,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2157)
            GoConditionalsEx2157(
              id: 2157,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2158)
            GoConditionalsEx2158(
              id: 2158,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2159)
            GoConditionalsEx2159(
              id: 2159,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
