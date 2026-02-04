
    import 'package:flutter/material.dart';
    import 'package:learnswift/Screens/Courses/react/reactForms/Ex/reactFormsEx3140.dart';
import 'package:learnswift/Screens/Courses/react/reactForms/Ex/reactFormsEx3141.dart';
import 'package:learnswift/Screens/Courses/react/reactForms/Ex/reactFormsEx3142.dart';
import 'package:learnswift/Screens/Courses/react/reactForms/Ex/reactFormsEx3143.dart';
import 'package:learnswift/Screens/Courses/react/reactForms/Ex/reactFormsEx3144.dart';
import 'package:learnswift/Screens/Courses/react/reactForms/Ex/reactFormsEx3145.dart';
import 'package:learnswift/Screens/Courses/react/reactForms/Ex/reactFormsEx3146.dart';
import 'package:learnswift/Screens/Courses/react/reactForms/Ex/reactFormsEx3147.dart';
import 'package:learnswift/Screens/Courses/react/reactForms/Ex/reactFormsEx3148.dart';
import 'package:learnswift/Screens/Courses/react/reactForms/Ex/reactFormsEx3149.dart';
import 'package:learnswift/Screens/Courses/react/reactForms/Ex/reactFormsEx3150.dart';
import 'package:learnswift/Screens/Courses/react/reactForms/Ex/reactFormsEx3151.dart';
import 'package:learnswift/Screens/Courses/react/reactForms/Ex/reactFormsEx3152.dart';
import 'package:learnswift/Screens/Courses/react/reactForms/Ex/reactFormsEx3153.dart';
import 'package:learnswift/Screens/Courses/react/reactForms/Ex/reactFormsEx3154.dart';

    import 'package:learnswift/Widgets/catInfoIcon.dart';

    class ReactFormsExMain extends StatefulWidget {
      final int id;
      final String title;
      final String description;
      final bool completed;
      Color color1;
      Color color2;

      ReactFormsExMain({
        super.key,
        required this.id,
        required this.title,
        required this.description,
        required this.completed,
        required this.color1,
        required this.color2,
      });

      @override
      State<ReactFormsExMain> createState() => _ReactFormsExMainState();
    }

    class _ReactFormsExMainState extends State<ReactFormsExMain> {
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
              if (widget.id == 3140)
            ReactFormsEx3140(
              id: 3140,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3141)
            ReactFormsEx3141(
              id: 3141,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3142)
            ReactFormsEx3142(
              id: 3142,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3143)
            ReactFormsEx3143(
              id: 3143,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3144)
            ReactFormsEx3144(
              id: 3144,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3145)
            ReactFormsEx3145(
              id: 3145,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3146)
            ReactFormsEx3146(
              id: 3146,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3147)
            ReactFormsEx3147(
              id: 3147,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3148)
            ReactFormsEx3148(
              id: 3148,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3149)
            ReactFormsEx3149(
              id: 3149,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3150)
            ReactFormsEx3150(
              id: 3150,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3151)
            ReactFormsEx3151(
              id: 3151,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3152)
            ReactFormsEx3152(
              id: 3152,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3153)
            ReactFormsEx3153(
              id: 3153,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3154)
            ReactFormsEx3154(
              id: 3154,
              title: widget.title,
              completed: widget.completed,
            ),
            ],
          ),
        );
      }
    }
