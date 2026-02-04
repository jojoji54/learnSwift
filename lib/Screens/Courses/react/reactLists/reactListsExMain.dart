
    import 'package:flutter/material.dart';
    import 'package:learnswift/Screens/Courses/react/reactLists/Ex/reactListsEx3110.dart';
import 'package:learnswift/Screens/Courses/react/reactLists/Ex/reactListsEx3111.dart';
import 'package:learnswift/Screens/Courses/react/reactLists/Ex/reactListsEx3112.dart';
import 'package:learnswift/Screens/Courses/react/reactLists/Ex/reactListsEx3113.dart';
import 'package:learnswift/Screens/Courses/react/reactLists/Ex/reactListsEx3114.dart';
import 'package:learnswift/Screens/Courses/react/reactLists/Ex/reactListsEx3115.dart';
import 'package:learnswift/Screens/Courses/react/reactLists/Ex/reactListsEx3116.dart';
import 'package:learnswift/Screens/Courses/react/reactLists/Ex/reactListsEx3117.dart';
import 'package:learnswift/Screens/Courses/react/reactLists/Ex/reactListsEx3118.dart';
import 'package:learnswift/Screens/Courses/react/reactLists/Ex/reactListsEx3119.dart';
import 'package:learnswift/Screens/Courses/react/reactLists/Ex/reactListsEx3120.dart';
import 'package:learnswift/Screens/Courses/react/reactLists/Ex/reactListsEx3121.dart';
import 'package:learnswift/Screens/Courses/react/reactLists/Ex/reactListsEx3122.dart';
import 'package:learnswift/Screens/Courses/react/reactLists/Ex/reactListsEx3123.dart';
import 'package:learnswift/Screens/Courses/react/reactLists/Ex/reactListsEx3124.dart';

    import 'package:learnswift/Widgets/catInfoIcon.dart';

    class ReactListsExMain extends StatefulWidget {
      final int id;
      final String title;
      final String description;
      final bool completed;
      Color color1;
      Color color2;

      ReactListsExMain({
        super.key,
        required this.id,
        required this.title,
        required this.description,
        required this.completed,
        required this.color1,
        required this.color2,
      });

      @override
      State<ReactListsExMain> createState() => _ReactListsExMainState();
    }

    class _ReactListsExMainState extends State<ReactListsExMain> {
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
              if (widget.id == 3110)
            ReactListsEx3110(
              id: 3110,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3111)
            ReactListsEx3111(
              id: 3111,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3112)
            ReactListsEx3112(
              id: 3112,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3113)
            ReactListsEx3113(
              id: 3113,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3114)
            ReactListsEx3114(
              id: 3114,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3115)
            ReactListsEx3115(
              id: 3115,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3116)
            ReactListsEx3116(
              id: 3116,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3117)
            ReactListsEx3117(
              id: 3117,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3118)
            ReactListsEx3118(
              id: 3118,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3119)
            ReactListsEx3119(
              id: 3119,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3120)
            ReactListsEx3120(
              id: 3120,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3121)
            ReactListsEx3121(
              id: 3121,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3122)
            ReactListsEx3122(
              id: 3122,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3123)
            ReactListsEx3123(
              id: 3123,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3124)
            ReactListsEx3124(
              id: 3124,
              title: widget.title,
              completed: widget.completed,
            ),
            ],
          ),
        );
      }
    }
