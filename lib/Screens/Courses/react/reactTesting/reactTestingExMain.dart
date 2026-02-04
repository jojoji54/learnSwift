
    import 'package:flutter/material.dart';
    import 'package:learnswift/Screens/Courses/react/reactTesting/Ex/reactTestingEx3245.dart';
import 'package:learnswift/Screens/Courses/react/reactTesting/Ex/reactTestingEx3246.dart';
import 'package:learnswift/Screens/Courses/react/reactTesting/Ex/reactTestingEx3247.dart';
import 'package:learnswift/Screens/Courses/react/reactTesting/Ex/reactTestingEx3248.dart';
import 'package:learnswift/Screens/Courses/react/reactTesting/Ex/reactTestingEx3249.dart';
import 'package:learnswift/Screens/Courses/react/reactTesting/Ex/reactTestingEx3250.dart';
import 'package:learnswift/Screens/Courses/react/reactTesting/Ex/reactTestingEx3251.dart';
import 'package:learnswift/Screens/Courses/react/reactTesting/Ex/reactTestingEx3252.dart';
import 'package:learnswift/Screens/Courses/react/reactTesting/Ex/reactTestingEx3253.dart';
import 'package:learnswift/Screens/Courses/react/reactTesting/Ex/reactTestingEx3254.dart';
import 'package:learnswift/Screens/Courses/react/reactTesting/Ex/reactTestingEx3255.dart';
import 'package:learnswift/Screens/Courses/react/reactTesting/Ex/reactTestingEx3256.dart';
import 'package:learnswift/Screens/Courses/react/reactTesting/Ex/reactTestingEx3257.dart';
import 'package:learnswift/Screens/Courses/react/reactTesting/Ex/reactTestingEx3258.dart';
import 'package:learnswift/Screens/Courses/react/reactTesting/Ex/reactTestingEx3259.dart';

    import 'package:learnswift/Widgets/catInfoIcon.dart';

    class ReactTestingExMain extends StatefulWidget {
      final int id;
      final String title;
      final String description;
      final bool completed;
      Color color1;
      Color color2;

      ReactTestingExMain({
        super.key,
        required this.id,
        required this.title,
        required this.description,
        required this.completed,
        required this.color1,
        required this.color2,
      });

      @override
      State<ReactTestingExMain> createState() => _ReactTestingExMainState();
    }

    class _ReactTestingExMainState extends State<ReactTestingExMain> {
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
              if (widget.id == 3245)
            ReactTestingEx3245(
              id: 3245,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3246)
            ReactTestingEx3246(
              id: 3246,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3247)
            ReactTestingEx3247(
              id: 3247,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3248)
            ReactTestingEx3248(
              id: 3248,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3249)
            ReactTestingEx3249(
              id: 3249,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3250)
            ReactTestingEx3250(
              id: 3250,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3251)
            ReactTestingEx3251(
              id: 3251,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3252)
            ReactTestingEx3252(
              id: 3252,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3253)
            ReactTestingEx3253(
              id: 3253,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3254)
            ReactTestingEx3254(
              id: 3254,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3255)
            ReactTestingEx3255(
              id: 3255,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3256)
            ReactTestingEx3256(
              id: 3256,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3257)
            ReactTestingEx3257(
              id: 3257,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3258)
            ReactTestingEx3258(
              id: 3258,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3259)
            ReactTestingEx3259(
              id: 3259,
              title: widget.title,
              completed: widget.completed,
            ),
            ],
          ),
        );
      }
    }
