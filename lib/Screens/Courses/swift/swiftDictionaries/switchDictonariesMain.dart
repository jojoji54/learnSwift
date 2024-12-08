import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/swift/swiftDictionaries/dictionarieswEx/DictionariesEx100.dart';
import 'package:learnswift/Screens/Courses/swift/swiftDictionaries/dictionarieswEx/DictionariesEx101.dart';
import 'package:learnswift/Screens/Courses/swift/swiftDictionaries/dictionarieswEx/DictionariesEx102.dart';
import 'package:learnswift/Screens/Courses/swift/swiftDictionaries/dictionarieswEx/DictionariesEx103.dart';
import 'package:learnswift/Screens/Courses/swift/swiftDictionaries/dictionarieswEx/DictionariesEx92.dart';
import 'package:learnswift/Screens/Courses/swift/swiftDictionaries/dictionarieswEx/DictionariesEx104.dart'; // Importa hasta la clase 104
import 'package:learnswift/Screens/Courses/swift/swiftDictionaries/dictionarieswEx/DictionariesEx93.dart';
import 'package:learnswift/Screens/Courses/swift/swiftDictionaries/dictionarieswEx/DictionariesEx94.dart';
import 'package:learnswift/Screens/Courses/swift/swiftDictionaries/dictionarieswEx/DictionariesEx95.dart';
import 'package:learnswift/Screens/Courses/swift/swiftDictionaries/dictionarieswEx/DictionariesEx96.dart';
import 'package:learnswift/Screens/Courses/swift/swiftDictionaries/dictionarieswEx/DictionariesEx97.dart';
import 'package:learnswift/Screens/Courses/swift/swiftDictionaries/dictionarieswEx/DictionariesEx98.dart';
import 'package:learnswift/Screens/Courses/swift/swiftDictionaries/dictionarieswEx/DictionariesEx99.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class SwitchDictonariesMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;
  SwitchDictonariesMain(
      {super.key,
      required this.id,
      required this.title,
      required this.description,
      required this.completed,
      required this.color1,
      required this.color2});

  @override
  State<SwitchDictonariesMain> createState() => _SwitchDictonariesMainState();
}

class _SwitchDictonariesMainState extends State<SwitchDictonariesMain> {
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
          if (widget.id == 92)
            DictionariesEx92(
                id: 92, title: widget.title, completed: widget.completed),
          if (widget.id == 93)
            DictionariesEx93(
                id: 93, title: widget.title, completed: widget.completed),
          if (widget.id == 94)
            DictionariesEx94(
                id: 94, title: widget.title, completed: widget.completed),
          if (widget.id == 95)
            DictionariesEx95(
                id: 95, title: widget.title, completed: widget.completed),
          if (widget.id == 96)
            DictionariesEx96(
                id: 96, title: widget.title, completed: widget.completed),
          if (widget.id == 97)
            DictionariesEx97(
                id: 97, title: widget.title, completed: widget.completed),
          if (widget.id == 98)
            DictionariesEx98(
                id: 98, title: widget.title, completed: widget.completed),
          if (widget.id == 99)
            DictionariesEx99(
                id: 99, title: widget.title, completed: widget.completed),
          if (widget.id == 100)
            DictionariesEx100(
                id: 100, title: widget.title, completed: widget.completed),
          if (widget.id == 101)
            DictionariesEx101(
                id: 101, title: widget.title, completed: widget.completed),
          if (widget.id == 102)
            DictionariesEx102(
                id: 102, title: widget.title, completed: widget.completed),
          if (widget.id == 103)
            DictionariesEx103(
                id: 103, title: widget.title, completed: widget.completed),
          if (widget.id == 104)
            DictionariesEx104(
                id: 104, title: widget.title, completed: widget.completed),
        ],
      ),
    );
  }
}
