import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/vue/vueReactivity/Ex/vueReactivityEx3645.dart';
import 'package:learnswift/Screens/Courses/vue/vueReactivity/Ex/vueReactivityEx3646.dart';
import 'package:learnswift/Screens/Courses/vue/vueReactivity/Ex/vueReactivityEx3647.dart';
import 'package:learnswift/Screens/Courses/vue/vueReactivity/Ex/vueReactivityEx3648.dart';
import 'package:learnswift/Screens/Courses/vue/vueReactivity/Ex/vueReactivityEx3649.dart';
import 'package:learnswift/Screens/Courses/vue/vueReactivity/Ex/vueReactivityEx3650.dart';
import 'package:learnswift/Screens/Courses/vue/vueReactivity/Ex/vueReactivityEx3651.dart';
import 'package:learnswift/Screens/Courses/vue/vueReactivity/Ex/vueReactivityEx3652.dart';
import 'package:learnswift/Screens/Courses/vue/vueReactivity/Ex/vueReactivityEx3653.dart';
import 'package:learnswift/Screens/Courses/vue/vueReactivity/Ex/vueReactivityEx3654.dart';
import 'package:learnswift/Screens/Courses/vue/vueReactivity/Ex/vueReactivityEx3655.dart';
import 'package:learnswift/Screens/Courses/vue/vueReactivity/Ex/vueReactivityEx3656.dart';
import 'package:learnswift/Screens/Courses/vue/vueReactivity/Ex/vueReactivityEx3657.dart';
import 'package:learnswift/Screens/Courses/vue/vueReactivity/Ex/vueReactivityEx3658.dart';
import 'package:learnswift/Screens/Courses/vue/vueReactivity/Ex/vueReactivityEx3659.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class VueReactivityExMain extends StatefulWidget {
      final int id;
      final String title;
      final String description;
      final bool completed;
      Color color1;
      Color color2;

      VueReactivityExMain({
        super.key,
        required this.id,
        required this.title,
        required this.description,
        required this.completed,
        required this.color1,
        required this.color2,
      });

      @override
      State<VueReactivityExMain> createState() => _VueReactivityExMainState();
    }

    class _VueReactivityExMainState extends State<VueReactivityExMain> {
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

if (widget.id == 3645)
  VueReactivityEx3645(
    id: 3645,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3646)
  VueReactivityEx3646(
    id: 3646,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3647)
  VueReactivityEx3647(
    id: 3647,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3648)
  VueReactivityEx3648(
    id: 3648,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3649)
  VueReactivityEx3649(
    id: 3649,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3650)
  VueReactivityEx3650(
    id: 3650,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3651)
  VueReactivityEx3651(
    id: 3651,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3652)
  VueReactivityEx3652(
    id: 3652,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3653)
  VueReactivityEx3653(
    id: 3653,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3654)
  VueReactivityEx3654(
    id: 3654,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3655)
  VueReactivityEx3655(
    id: 3655,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3656)
  VueReactivityEx3656(
    id: 3656,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3657)
  VueReactivityEx3657(
    id: 3657,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3658)
  VueReactivityEx3658(
    id: 3658,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3659)
  VueReactivityEx3659(
    id: 3659,
    title: widget.title,
    completed: widget.completed,
  ),
            ],
          ),
        );
      }
    }
