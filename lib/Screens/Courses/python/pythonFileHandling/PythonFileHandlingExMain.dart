import 'package:flutter/material.dart';

import 'package:learnswift/Widgets/catInfoIcon.dart';

// ✅ Importa los que ya existan.
// (De momento pongo 207 y 208 como ejemplo; el resto los iremos creando)
import 'package:learnswift/Screens/Courses/python/pythonFileHandling/Ex/pythonFileHandlingEx207.dart';
import 'package:learnswift/Screens/Courses/python/pythonFileHandling/Ex/pythonFileHandlingEx208.dart';

import 'Ex/pythonFileHandlingEx209.dart';
import 'Ex/pythonFileHandlingEx210.dart';
import 'Ex/pythonFileHandlingEx211.dart';
import 'Ex/pythonFileHandlingEx212.dart';
import 'Ex/pythonFileHandlingEx213.dart';
import 'Ex/pythonFileHandlingEx214.dart';
import 'Ex/pythonFileHandlingEx215.dart';
import 'Ex/pythonFileHandlingEx216.dart';
import 'Ex/pythonFileHandlingEx217.dart';
import 'Ex/pythonFileHandlingEx218.dart';
import 'Ex/pythonFileHandlingEx219.dart';
import 'Ex/pythonFileHandlingEx220.dart';
import 'Ex/pythonFileHandlingEx221.dart';

// import 'package:learnswift/Screens/Courses/python/pythonFileHandling/Ex/pythonFileHandlingEx209.dart';
// import 'package:learnswift/Screens/Courses/python/pythonFileHandling/Ex/pythonFileHandlingEx210.dart';
// import 'package:learnswift/Screens/Courses/python/pythonFileHandling/Ex/pythonFileHandlingEx211.dart';
// import 'package:learnswift/Screens/Courses/python/pythonFileHandling/Ex/pythonFileHandlingEx212.dart';
// import 'package:learnswift/Screens/Courses/python/pythonFileHandling/Ex/pythonFileHandlingEx213.dart';
// import 'package:learnswift/Screens/Courses/python/pythonFileHandling/Ex/pythonFileHandlingEx214.dart';
// import 'package:learnswift/Screens/Courses/python/pythonFileHandling/Ex/pythonFileHandlingEx215.dart';
// import 'package:learnswift/Screens/Courses/python/pythonFileHandling/Ex/pythonFileHandlingEx216.dart';
// import 'package:learnswift/Screens/Courses/python/pythonFileHandling/Ex/pythonFileHandlingEx217.dart';
// import 'package:learnswift/Screens/Courses/python/pythonFileHandling/Ex/pythonFileHandlingEx218.dart';
// import 'package:learnswift/Screens/Courses/python/pythonFileHandling/Ex/pythonFileHandlingEx219.dart';
// import 'package:learnswift/Screens/Courses/python/pythonFileHandling/Ex/pythonFileHandlingEx220.dart';
// import 'package:learnswift/Screens/Courses/python/pythonFileHandling/Ex/pythonFileHandlingEx221.dart';

class FileHandlingExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  FileHandlingExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<FileHandlingExMain> createState() => _FileHandlingExMainState();
}

class _FileHandlingExMainState extends State<FileHandlingExMain> {
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
          // ✅ 207
          if (widget.id == 207)
            PythonFileHandlingEx207(
              id: 207,
              title: widget.title,
              completed: widget.completed,
            ),

          // ✅ 208
          if (widget.id == 208)
            PythonFileHandlingEx208(
              id: 208,
              title: widget.title,
              completed: widget.completed,
            ),


          if (widget.id == 209)
            PythonFileHandlingEx209(id: 209, title: widget.title, completed: widget.completed),

          if (widget.id == 210)
            PythonFileHandlingEx210(id: 210, title: widget.title, completed: widget.completed),

          if (widget.id == 211)
            PythonFileHandlingEx211(id: 211, title: widget.title, completed: widget.completed),

          if (widget.id == 212)
            PythonFileHandlingEx212(id: 212, title: widget.title, completed: widget.completed),

          if (widget.id == 213)
            PythonFileHandlingEx213(id: 213, title: widget.title, completed: widget.completed),

          if (widget.id == 214)
            PythonFileHandlingEx214(id: 214, title: widget.title, completed: widget.completed),

          if (widget.id == 215)
            PythonFileHandlingEx215(id: 215, title: widget.title, completed: widget.completed),

          if (widget.id == 216)
            PythonFileHandlingEx216(id: 216, title: widget.title, completed: widget.completed),

          if (widget.id == 217)
            PythonFileHandlingEx217(id: 217, title: widget.title, completed: widget.completed),

          if (widget.id == 218)
            PythonFileHandlingEx218(id: 218, title: widget.title, completed: widget.completed),

          if (widget.id == 219)
            PythonFileHandlingEx219(id: 219, title: widget.title, completed: widget.completed),

          if (widget.id == 220)
            PythonFileHandlingEx220(id: 220, title: widget.title, completed: widget.completed),

          if (widget.id == 221)
            PythonFileHandlingEx221(id: 221, title: widget.title, completed: widget.completed),
        
        ],
      ),
    );
  }
}
