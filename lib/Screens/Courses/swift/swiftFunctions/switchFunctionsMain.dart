import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/swift/swiftFunctions/functionsEx/FuctionsEx118.dart';
import 'package:learnswift/Screens/Courses/swift/swiftFunctions/functionsEx/FuctionsEx119.dart';
import 'package:learnswift/Screens/Courses/swift/swiftFunctions/functionsEx/FuctionsEx120.dart';
import 'package:learnswift/Screens/Courses/swift/swiftFunctions/functionsEx/FuctionsEx121.dart';
import 'package:learnswift/Screens/Courses/swift/swiftFunctions/functionsEx/FuctionsEx122.dart';
import 'package:learnswift/Screens/Courses/swift/swiftFunctions/functionsEx/FuctionsEx123.dart';
import 'package:learnswift/Screens/Courses/swift/swiftFunctions/functionsEx/FuctionsEx124.dart';
import 'package:learnswift/Screens/Courses/swift/swiftFunctions/functionsEx/FuctionsEx125.dart';
import 'package:learnswift/Screens/Courses/swift/swiftFunctions/functionsEx/FuctionsEx126.dart';
import 'package:learnswift/Screens/Courses/swift/swiftFunctions/functionsEx/FuctionsEx127.dart';
import 'package:learnswift/Screens/Courses/swift/swiftFunctions/functionsEx/FuctionsEx128.dart';
import 'package:learnswift/Screens/Courses/swift/swiftFunctions/functionsEx/FuctionsEx129.dart';
import 'package:learnswift/Screens/Courses/swift/swiftFunctions/functionsEx/FuctionsEx130.dart';
import 'package:learnswift/Screens/Courses/swift/swiftFunctions/functionsEx/FuctionsEx131.dart';
import 'package:learnswift/Screens/Courses/swift/swiftFunctions/functionsEx/FuctionsEx132.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class SwitchFunctionsMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;
  SwitchFunctionsMain(
      {super.key,
      required this.id,
      required this.title,
      required this.description,
      required this.completed,
      required this.color1,
      required this.color2});

  @override
  State<SwitchFunctionsMain> createState() => _SwitchFunctionsMainState();
}

class _SwitchFunctionsMainState extends State<SwitchFunctionsMain> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        flexibleSpace: AnimatedContainer(
          duration: const Duration(seconds: 2), // Duración de la transición
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [widget.color1, widget.color2],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        toolbarHeight: 100, // Define la altura deseada del AppBar
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Text(
                  widget.title,
                  style: TextStyle(
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
              child: CatInfoIcon(
                description: widget.description,
              ), // Aquí añades el ícono de información
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          if (widget.id == 118)
            FunctionsEx118(
                id: 118, title: widget.title, completed: widget.completed),
          if (widget.id == 119)
            FunctionsEx119(
                id: 119, title: widget.title, completed: widget.completed),
          if (widget.id == 120)
            FunctionsEx120(
                id: 120, title: widget.title, completed: widget.completed),
          if (widget.id == 121)
            FunctionsEx121(
                id: 121, title: widget.title, completed: widget.completed),
          if (widget.id == 122)
            FunctionsEx122(
                id: 122, title: widget.title, completed: widget.completed),
          if (widget.id == 123)
            FunctionsEx123(
                id: 123, title: widget.title, completed: widget.completed),
          if (widget.id == 124)
            FunctionsEx124(
                id: 124, title: widget.title, completed: widget.completed),
          if (widget.id == 125)
            FunctionsEx125(
                id: 125, title: widget.title, completed: widget.completed),
          if (widget.id == 126)
            FunctionsEx126(
                id: 126, title: widget.title, completed: widget.completed),
          if (widget.id == 127)
            FunctionsEx127(
                id: 127, title: widget.title, completed: widget.completed),
          if (widget.id == 128)
            FunctionsEx128(
                id: 128, title: widget.title, completed: widget.completed),
          if (widget.id == 129)
            FunctionsEx129(
                id: 129, title: widget.title, completed: widget.completed),
          if (widget.id == 130)
            FunctionsEx130(
                id: 130, title: widget.title, completed: widget.completed),
          if (widget.id == 131)
            FunctionsEx131(
                id: 131, title: widget.title, completed: widget.completed),
          if (widget.id == 132)
            FunctionsEx132(
                id: 132, title: widget.title, completed: widget.completed),
        ],
      ),
    );
  }
}
