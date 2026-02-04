
    import 'package:flutter/material.dart';
    import 'package:learnswift/Screens/Courses/react/reactStyling/Ex/reactStylingEx3260.dart';
import 'package:learnswift/Screens/Courses/react/reactStyling/Ex/reactStylingEx3261.dart';
import 'package:learnswift/Screens/Courses/react/reactStyling/Ex/reactStylingEx3262.dart';
import 'package:learnswift/Screens/Courses/react/reactStyling/Ex/reactStylingEx3263.dart';
import 'package:learnswift/Screens/Courses/react/reactStyling/Ex/reactStylingEx3264.dart';
import 'package:learnswift/Screens/Courses/react/reactStyling/Ex/reactStylingEx3265.dart';
import 'package:learnswift/Screens/Courses/react/reactStyling/Ex/reactStylingEx3266.dart';
import 'package:learnswift/Screens/Courses/react/reactStyling/Ex/reactStylingEx3267.dart';
import 'package:learnswift/Screens/Courses/react/reactStyling/Ex/reactStylingEx3268.dart';
import 'package:learnswift/Screens/Courses/react/reactStyling/Ex/reactStylingEx3269.dart';
import 'package:learnswift/Screens/Courses/react/reactStyling/Ex/reactStylingEx3270.dart';
import 'package:learnswift/Screens/Courses/react/reactStyling/Ex/reactStylingEx3271.dart';
import 'package:learnswift/Screens/Courses/react/reactStyling/Ex/reactStylingEx3272.dart';
import 'package:learnswift/Screens/Courses/react/reactStyling/Ex/reactStylingEx3273.dart';
import 'package:learnswift/Screens/Courses/react/reactStyling/Ex/reactStylingEx3274.dart';

    import 'package:learnswift/Widgets/catInfoIcon.dart';

    class ReactStylingExMain extends StatefulWidget {
      final int id;
      final String title;
      final String description;
      final bool completed;
      Color color1;
      Color color2;

      ReactStylingExMain({
        super.key,
        required this.id,
        required this.title,
        required this.description,
        required this.completed,
        required this.color1,
        required this.color2,
      });

      @override
      State<ReactStylingExMain> createState() => _ReactStylingExMainState();
    }

    class _ReactStylingExMainState extends State<ReactStylingExMain> {
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
              if (widget.id == 3260)
            ReactStylingEx3260(
              id: 3260,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3261)
            ReactStylingEx3261(
              id: 3261,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3262)
            ReactStylingEx3262(
              id: 3262,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3263)
            ReactStylingEx3263(
              id: 3263,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3264)
            ReactStylingEx3264(
              id: 3264,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3265)
            ReactStylingEx3265(
              id: 3265,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3266)
            ReactStylingEx3266(
              id: 3266,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3267)
            ReactStylingEx3267(
              id: 3267,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3268)
            ReactStylingEx3268(
              id: 3268,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3269)
            ReactStylingEx3269(
              id: 3269,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3270)
            ReactStylingEx3270(
              id: 3270,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3271)
            ReactStylingEx3271(
              id: 3271,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3272)
            ReactStylingEx3272(
              id: 3272,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3273)
            ReactStylingEx3273(
              id: 3273,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3274)
            ReactStylingEx3274(
              id: 3274,
              title: widget.title,
              completed: widget.completed,
            ),
            ],
          ),
        );
      }
    }
