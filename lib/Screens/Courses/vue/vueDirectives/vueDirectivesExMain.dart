import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/vue/vueDirectives/Ex/vueDirectivesEx3660.dart';
import 'package:learnswift/Screens/Courses/vue/vueDirectives/Ex/vueDirectivesEx3661.dart';
import 'package:learnswift/Screens/Courses/vue/vueDirectives/Ex/vueDirectivesEx3662.dart';
import 'package:learnswift/Screens/Courses/vue/vueDirectives/Ex/vueDirectivesEx3663.dart';
import 'package:learnswift/Screens/Courses/vue/vueDirectives/Ex/vueDirectivesEx3664.dart';
import 'package:learnswift/Screens/Courses/vue/vueDirectives/Ex/vueDirectivesEx3665.dart';
import 'package:learnswift/Screens/Courses/vue/vueDirectives/Ex/vueDirectivesEx3666.dart';
import 'package:learnswift/Screens/Courses/vue/vueDirectives/Ex/vueDirectivesEx3667.dart';
import 'package:learnswift/Screens/Courses/vue/vueDirectives/Ex/vueDirectivesEx3668.dart';
import 'package:learnswift/Screens/Courses/vue/vueDirectives/Ex/vueDirectivesEx3669.dart';
import 'package:learnswift/Screens/Courses/vue/vueDirectives/Ex/vueDirectivesEx3670.dart';
import 'package:learnswift/Screens/Courses/vue/vueDirectives/Ex/vueDirectivesEx3671.dart';
import 'package:learnswift/Screens/Courses/vue/vueDirectives/Ex/vueDirectivesEx3672.dart';
import 'package:learnswift/Screens/Courses/vue/vueDirectives/Ex/vueDirectivesEx3673.dart';
import 'package:learnswift/Screens/Courses/vue/vueDirectives/Ex/vueDirectivesEx3674.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class VueDirectivesExMain extends StatefulWidget {
      final int id;
      final String title;
      final String description;
      final bool completed;
      Color color1;
      Color color2;

      VueDirectivesExMain({
        super.key,
        required this.id,
        required this.title,
        required this.description,
        required this.completed,
        required this.color1,
        required this.color2,
      });

      @override
      State<VueDirectivesExMain> createState() => _VueDirectivesExMainState();
    }

    class _VueDirectivesExMainState extends State<VueDirectivesExMain> {
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

if (widget.id == 3660)
  VueDirectivesEx3660(
    id: 3660,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3661)
  VueDirectivesEx3661(
    id: 3661,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3662)
  VueDirectivesEx3662(
    id: 3662,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3663)
  VueDirectivesEx3663(
    id: 3663,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3664)
  VueDirectivesEx3664(
    id: 3664,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3665)
  VueDirectivesEx3665(
    id: 3665,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3666)
  VueDirectivesEx3666(
    id: 3666,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3667)
  VueDirectivesEx3667(
    id: 3667,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3668)
  VueDirectivesEx3668(
    id: 3668,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3669)
  VueDirectivesEx3669(
    id: 3669,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3670)
  VueDirectivesEx3670(
    id: 3670,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3671)
  VueDirectivesEx3671(
    id: 3671,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3672)
  VueDirectivesEx3672(
    id: 3672,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3673)
  VueDirectivesEx3673(
    id: 3673,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3674)
  VueDirectivesEx3674(
    id: 3674,
    title: widget.title,
    completed: widget.completed,
  ),
            ],
          ),
        );
      }
    }
