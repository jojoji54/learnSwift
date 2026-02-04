
    import 'package:flutter/material.dart';
    import 'package:learnswift/Screens/Courses/react/reactEffects/Ex/reactEffectsEx3155.dart';
import 'package:learnswift/Screens/Courses/react/reactEffects/Ex/reactEffectsEx3156.dart';
import 'package:learnswift/Screens/Courses/react/reactEffects/Ex/reactEffectsEx3157.dart';
import 'package:learnswift/Screens/Courses/react/reactEffects/Ex/reactEffectsEx3158.dart';
import 'package:learnswift/Screens/Courses/react/reactEffects/Ex/reactEffectsEx3159.dart';
import 'package:learnswift/Screens/Courses/react/reactEffects/Ex/reactEffectsEx3160.dart';
import 'package:learnswift/Screens/Courses/react/reactEffects/Ex/reactEffectsEx3161.dart';
import 'package:learnswift/Screens/Courses/react/reactEffects/Ex/reactEffectsEx3162.dart';
import 'package:learnswift/Screens/Courses/react/reactEffects/Ex/reactEffectsEx3163.dart';
import 'package:learnswift/Screens/Courses/react/reactEffects/Ex/reactEffectsEx3164.dart';
import 'package:learnswift/Screens/Courses/react/reactEffects/Ex/reactEffectsEx3165.dart';
import 'package:learnswift/Screens/Courses/react/reactEffects/Ex/reactEffectsEx3166.dart';
import 'package:learnswift/Screens/Courses/react/reactEffects/Ex/reactEffectsEx3167.dart';
import 'package:learnswift/Screens/Courses/react/reactEffects/Ex/reactEffectsEx3168.dart';
import 'package:learnswift/Screens/Courses/react/reactEffects/Ex/reactEffectsEx3169.dart';

    import 'package:learnswift/Widgets/catInfoIcon.dart';

    class ReactEffectsExMain extends StatefulWidget {
      final int id;
      final String title;
      final String description;
      final bool completed;
      Color color1;
      Color color2;

      ReactEffectsExMain({
        super.key,
        required this.id,
        required this.title,
        required this.description,
        required this.completed,
        required this.color1,
        required this.color2,
      });

      @override
      State<ReactEffectsExMain> createState() => _ReactEffectsExMainState();
    }

    class _ReactEffectsExMainState extends State<ReactEffectsExMain> {
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
              if (widget.id == 3155)
            ReactEffectsEx3155(
              id: 3155,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3156)
            ReactEffectsEx3156(
              id: 3156,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3157)
            ReactEffectsEx3157(
              id: 3157,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3158)
            ReactEffectsEx3158(
              id: 3158,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3159)
            ReactEffectsEx3159(
              id: 3159,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3160)
            ReactEffectsEx3160(
              id: 3160,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3161)
            ReactEffectsEx3161(
              id: 3161,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3162)
            ReactEffectsEx3162(
              id: 3162,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3163)
            ReactEffectsEx3163(
              id: 3163,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3164)
            ReactEffectsEx3164(
              id: 3164,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3165)
            ReactEffectsEx3165(
              id: 3165,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3166)
            ReactEffectsEx3166(
              id: 3166,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3167)
            ReactEffectsEx3167(
              id: 3167,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3168)
            ReactEffectsEx3168(
              id: 3168,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3169)
            ReactEffectsEx3169(
              id: 3169,
              title: widget.title,
              completed: widget.completed,
            ),
            ],
          ),
        );
      }
    }
