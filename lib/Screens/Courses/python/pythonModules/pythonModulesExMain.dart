import 'package:flutter/material.dart';

// Exercises (252 - 266)
import 'package:learnswift/Screens/Courses/python/pythonModules/Ex/pythonModulesEx252.dart';
import 'package:learnswift/Screens/Courses/python/pythonModules/Ex/pythonModulesEx253.dart';
import 'package:learnswift/Screens/Courses/python/pythonModules/Ex/pythonModulesEx254.dart';
import 'package:learnswift/Screens/Courses/python/pythonModules/Ex/pythonModulesEx255.dart';
import 'package:learnswift/Screens/Courses/python/pythonModules/Ex/pythonModulesEx256.dart';
import 'package:learnswift/Screens/Courses/python/pythonModules/Ex/pythonModulesEx257.dart';
import 'package:learnswift/Screens/Courses/python/pythonModules/Ex/pythonModulesEx258.dart';
import 'package:learnswift/Screens/Courses/python/pythonModules/Ex/pythonModulesEx259.dart';
import 'package:learnswift/Screens/Courses/python/pythonModules/Ex/pythonModulesEx260.dart';
import 'package:learnswift/Screens/Courses/python/pythonModules/Ex/pythonModulesEx261.dart';
import 'package:learnswift/Screens/Courses/python/pythonModules/Ex/pythonModulesEx262.dart';
import 'package:learnswift/Screens/Courses/python/pythonModules/Ex/pythonModulesEx263.dart';
import 'package:learnswift/Screens/Courses/python/pythonModules/Ex/pythonModulesEx264.dart';
import 'package:learnswift/Screens/Courses/python/pythonModules/Ex/pythonModulesEx265.dart';
import 'package:learnswift/Screens/Courses/python/pythonModules/Ex/pythonModulesEx266.dart';

import 'package:learnswift/Widgets/catInfoIcon.dart';

class ModulesLibrariesExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  ModulesLibrariesExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<ModulesLibrariesExMain> createState() => _ModulesLibrariesExMainState();
}

class _ModulesLibrariesExMainState extends State<ModulesLibrariesExMain> {
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
          if (widget.id == 252)
            PythonModulesEx252(
              id: 252,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 253)
            PythonModulesEx253(
              id: 253,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 254)
            PythonModulesEx254(
              id: 254,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 255)
            PythonModulesEx255(
              id: 255,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 256)
            PythonModulesEx256(
              id: 256,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 257)
            PythonModulesEx257(
              id: 257,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 258)
            PythonModulesEx258(
              id: 258,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 259)
            PythonModulesEx259(
              id: 259,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 260)
            PythonModulesEx260(
              id: 260,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 261)
            PythonModulesEx261(
              id: 261,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 262)
            PythonModulesEx262(
              id: 262,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 263)
            PythonModulesEx263(
              id: 263,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 264)
            PythonModulesEx264(
              id: 264,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 265)
            PythonModulesEx265(
              id: 265,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 266)
            PythonModulesEx266(
              id: 266,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
