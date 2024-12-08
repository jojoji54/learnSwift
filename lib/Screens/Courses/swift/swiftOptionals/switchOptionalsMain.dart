import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/swift/swiftOptionals/optionalsEx/OptionalsEx133.dart';
import 'package:learnswift/Screens/Courses/swift/swiftOptionals/optionalsEx/OptionalsEx134.dart';
import 'package:learnswift/Screens/Courses/swift/swiftOptionals/optionalsEx/OptionalsEx135.dart';
import 'package:learnswift/Screens/Courses/swift/swiftOptionals/optionalsEx/OptionalsEx136.dart';
import 'package:learnswift/Screens/Courses/swift/swiftOptionals/optionalsEx/OptionalsEx137.dart';
import 'package:learnswift/Screens/Courses/swift/swiftOptionals/optionalsEx/OptionalsEx138.dart';
import 'package:learnswift/Screens/Courses/swift/swiftOptionals/optionalsEx/OptionalsEx139.dart';
import 'package:learnswift/Screens/Courses/swift/swiftOptionals/optionalsEx/OptionalsEx140.dart';
import 'package:learnswift/Screens/Courses/swift/swiftOptionals/optionalsEx/OptionalsEx141.dart';
import 'package:learnswift/Screens/Courses/swift/swiftOptionals/optionalsEx/OptionalsEx142.dart';
import 'package:learnswift/Screens/Courses/swift/swiftOptionals/optionalsEx/OptionalsEx143.dart';
import 'package:learnswift/Screens/Courses/swift/swiftOptionals/optionalsEx/OptionalsEx144.dart';
import 'package:learnswift/Screens/Courses/swift/swiftOptionals/optionalsEx/OptionalsEx145.dart';
import 'package:learnswift/Screens/Courses/swift/swiftOptionals/optionalsEx/OptionalsEx146.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class SwitchOptionalsMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;
  SwitchOptionalsMain(
      {super.key,
      required this.id,
      required this.title,
      required this.description,
      required this.completed,
      required this.color1,
      required this.color2});

  @override
  State<SwitchOptionalsMain> createState() => _SwitchOptionalsMainState();
}

class _SwitchOptionalsMainState extends State<SwitchOptionalsMain> {
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
          if (widget.id == 133)
            OptionalsEx133(
                id: 133, title: widget.title, completed: widget.completed),
          if (widget.id == 134)
            OptionalsEx134(
                id: 134, title: widget.title, completed: widget.completed),
          if (widget.id == 135)
            OptionalsEx135(
                id: 135, title: widget.title, completed: widget.completed),
          if (widget.id == 136)
            OptionalsEx136(
                id: 136, title: widget.title, completed: widget.completed),
          if (widget.id == 137)
            OptionalsEx137(
                id: 137, title: widget.title, completed: widget.completed),
          if (widget.id == 138)
            OptionalsEx138(
                id: 138, title: widget.title, completed: widget.completed),
          if (widget.id == 139)
            OptionalsEx139(
                id: 139, title: widget.title, completed: widget.completed),
          if (widget.id == 140)
            OptionalsEx140(
                id: 140, title: widget.title, completed: widget.completed),
          if (widget.id == 141)
            OptionalsEx141(
                id: 141, title: widget.title, completed: widget.completed),
          if (widget.id == 142)
            OptionalsEx142(
                id: 142, title: widget.title, completed: widget.completed),
          if (widget.id == 143)
            OptionalsEx143(
                id: 143, title: widget.title, completed: widget.completed),
          if (widget.id == 144)
            OptionalsEx144(
                id: 144, title: widget.title, completed: widget.completed),
          if (widget.id == 145)
            OptionalsEx145(
                id: 145, title: widget.title, completed: widget.completed),
          if (widget.id == 146)
            OptionalsEx146(
                id: 146, title: widget.title, completed: widget.completed),
        ],
      ),
    );
  }
}
