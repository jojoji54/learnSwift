import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/goInterfacesEx2265.dart';
import 'Ex/goInterfacesEx2266.dart';
import 'Ex/goInterfacesEx2267.dart';
import 'Ex/goInterfacesEx2268.dart';
import 'Ex/goInterfacesEx2269.dart';
import 'Ex/goInterfacesEx2270.dart';
import 'Ex/goInterfacesEx2271.dart';
import 'Ex/goInterfacesEx2272.dart';
import 'Ex/goInterfacesEx2273.dart';
import 'Ex/goInterfacesEx2274.dart';
import 'Ex/goInterfacesEx2275.dart';
import 'Ex/goInterfacesEx2276.dart';
import 'Ex/goInterfacesEx2277.dart';
import 'Ex/goInterfacesEx2278.dart';
import 'Ex/goInterfacesEx2279.dart';

class GoInterfacesExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  GoInterfacesExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<GoInterfacesExMain> createState() => _GoInterfacesExMainState();
}

class _GoInterfacesExMainState extends State<GoInterfacesExMain> {
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
          if (widget.id == 2265)
            GoInterfacesEx2265(
              id: 2265,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2266)
            GoInterfacesEx2266(
              id: 2266,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2267)
            GoInterfacesEx2267(
              id: 2267,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2268)
            GoInterfacesEx2268(
              id: 2268,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2269)
            GoInterfacesEx2269(
              id: 2269,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2270)
            GoInterfacesEx2270(
              id: 2270,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2271)
            GoInterfacesEx2271(
              id: 2271,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2272)
            GoInterfacesEx2272(
              id: 2272,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2273)
            GoInterfacesEx2273(
              id: 2273,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2274)
            GoInterfacesEx2274(
              id: 2274,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2275)
            GoInterfacesEx2275(
              id: 2275,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2276)
            GoInterfacesEx2276(
              id: 2276,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2277)
            GoInterfacesEx2277(
              id: 2277,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2278)
            GoInterfacesEx2278(
              id: 2278,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2279)
            GoInterfacesEx2279(
              id: 2279,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
