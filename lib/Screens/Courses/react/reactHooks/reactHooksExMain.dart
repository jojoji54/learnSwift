
    import 'package:flutter/material.dart';
    import 'package:learnswift/Screens/Courses/react/reactHooks/Ex/reactHooksEx3185.dart';
import 'package:learnswift/Screens/Courses/react/reactHooks/Ex/reactHooksEx3186.dart';
import 'package:learnswift/Screens/Courses/react/reactHooks/Ex/reactHooksEx3187.dart';
import 'package:learnswift/Screens/Courses/react/reactHooks/Ex/reactHooksEx3188.dart';
import 'package:learnswift/Screens/Courses/react/reactHooks/Ex/reactHooksEx3189.dart';
import 'package:learnswift/Screens/Courses/react/reactHooks/Ex/reactHooksEx3190.dart';
import 'package:learnswift/Screens/Courses/react/reactHooks/Ex/reactHooksEx3191.dart';
import 'package:learnswift/Screens/Courses/react/reactHooks/Ex/reactHooksEx3192.dart';
import 'package:learnswift/Screens/Courses/react/reactHooks/Ex/reactHooksEx3193.dart';
import 'package:learnswift/Screens/Courses/react/reactHooks/Ex/reactHooksEx3194.dart';
import 'package:learnswift/Screens/Courses/react/reactHooks/Ex/reactHooksEx3195.dart';
import 'package:learnswift/Screens/Courses/react/reactHooks/Ex/reactHooksEx3196.dart';
import 'package:learnswift/Screens/Courses/react/reactHooks/Ex/reactHooksEx3197.dart';
import 'package:learnswift/Screens/Courses/react/reactHooks/Ex/reactHooksEx3198.dart';
import 'package:learnswift/Screens/Courses/react/reactHooks/Ex/reactHooksEx3199.dart';

    import 'package:learnswift/Widgets/catInfoIcon.dart';

    class ReactHooksExMain extends StatefulWidget {
      final int id;
      final String title;
      final String description;
      final bool completed;
      Color color1;
      Color color2;

      ReactHooksExMain({
        super.key,
        required this.id,
        required this.title,
        required this.description,
        required this.completed,
        required this.color1,
        required this.color2,
      });

      @override
      State<ReactHooksExMain> createState() => _ReactHooksExMainState();
    }

    class _ReactHooksExMainState extends State<ReactHooksExMain> {
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
              if (widget.id == 3185)
            ReactHooksEx3185(
              id: 3185,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3186)
            ReactHooksEx3186(
              id: 3186,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3187)
            ReactHooksEx3187(
              id: 3187,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3188)
            ReactHooksEx3188(
              id: 3188,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3189)
            ReactHooksEx3189(
              id: 3189,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3190)
            ReactHooksEx3190(
              id: 3190,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3191)
            ReactHooksEx3191(
              id: 3191,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3192)
            ReactHooksEx3192(
              id: 3192,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3193)
            ReactHooksEx3193(
              id: 3193,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3194)
            ReactHooksEx3194(
              id: 3194,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3195)
            ReactHooksEx3195(
              id: 3195,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3196)
            ReactHooksEx3196(
              id: 3196,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3197)
            ReactHooksEx3197(
              id: 3197,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3198)
            ReactHooksEx3198(
              id: 3198,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3199)
            ReactHooksEx3199(
              id: 3199,
              title: widget.title,
              completed: widget.completed,
            ),
            ],
          ),
        );
      }
    }
