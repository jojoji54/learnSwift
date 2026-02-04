
    import 'package:flutter/material.dart';
    import 'package:learnswift/Screens/Courses/react/reactContext/Ex/reactContextEx3170.dart';
import 'package:learnswift/Screens/Courses/react/reactContext/Ex/reactContextEx3171.dart';
import 'package:learnswift/Screens/Courses/react/reactContext/Ex/reactContextEx3172.dart';
import 'package:learnswift/Screens/Courses/react/reactContext/Ex/reactContextEx3173.dart';
import 'package:learnswift/Screens/Courses/react/reactContext/Ex/reactContextEx3174.dart';
import 'package:learnswift/Screens/Courses/react/reactContext/Ex/reactContextEx3175.dart';
import 'package:learnswift/Screens/Courses/react/reactContext/Ex/reactContextEx3176.dart';
import 'package:learnswift/Screens/Courses/react/reactContext/Ex/reactContextEx3177.dart';
import 'package:learnswift/Screens/Courses/react/reactContext/Ex/reactContextEx3178.dart';
import 'package:learnswift/Screens/Courses/react/reactContext/Ex/reactContextEx3179.dart';
import 'package:learnswift/Screens/Courses/react/reactContext/Ex/reactContextEx3180.dart';
import 'package:learnswift/Screens/Courses/react/reactContext/Ex/reactContextEx3181.dart';
import 'package:learnswift/Screens/Courses/react/reactContext/Ex/reactContextEx3182.dart';
import 'package:learnswift/Screens/Courses/react/reactContext/Ex/reactContextEx3183.dart';
import 'package:learnswift/Screens/Courses/react/reactContext/Ex/reactContextEx3184.dart';

    import 'package:learnswift/Widgets/catInfoIcon.dart';

    class ReactContextExMain extends StatefulWidget {
      final int id;
      final String title;
      final String description;
      final bool completed;
      Color color1;
      Color color2;

      ReactContextExMain({
        super.key,
        required this.id,
        required this.title,
        required this.description,
        required this.completed,
        required this.color1,
        required this.color2,
      });

      @override
      State<ReactContextExMain> createState() => _ReactContextExMainState();
    }

    class _ReactContextExMainState extends State<ReactContextExMain> {
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
              if (widget.id == 3170)
            ReactContextEx3170(
              id: 3170,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3171)
            ReactContextEx3171(
              id: 3171,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3172)
            ReactContextEx3172(
              id: 3172,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3173)
            ReactContextEx3173(
              id: 3173,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3174)
            ReactContextEx3174(
              id: 3174,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3175)
            ReactContextEx3175(
              id: 3175,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3176)
            ReactContextEx3176(
              id: 3176,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3177)
            ReactContextEx3177(
              id: 3177,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3178)
            ReactContextEx3178(
              id: 3178,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3179)
            ReactContextEx3179(
              id: 3179,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3180)
            ReactContextEx3180(
              id: 3180,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3181)
            ReactContextEx3181(
              id: 3181,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3182)
            ReactContextEx3182(
              id: 3182,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3183)
            ReactContextEx3183(
              id: 3183,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3184)
            ReactContextEx3184(
              id: 3184,
              title: widget.title,
              completed: widget.completed,
            ),
            ],
          ),
        );
      }
    }
