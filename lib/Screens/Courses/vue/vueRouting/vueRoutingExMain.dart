import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/vue/vueRouting/Ex/vueRoutingEx3720.dart';
import 'package:learnswift/Screens/Courses/vue/vueRouting/Ex/vueRoutingEx3721.dart';
import 'package:learnswift/Screens/Courses/vue/vueRouting/Ex/vueRoutingEx3722.dart';
import 'package:learnswift/Screens/Courses/vue/vueRouting/Ex/vueRoutingEx3723.dart';
import 'package:learnswift/Screens/Courses/vue/vueRouting/Ex/vueRoutingEx3724.dart';
import 'package:learnswift/Screens/Courses/vue/vueRouting/Ex/vueRoutingEx3725.dart';
import 'package:learnswift/Screens/Courses/vue/vueRouting/Ex/vueRoutingEx3726.dart';
import 'package:learnswift/Screens/Courses/vue/vueRouting/Ex/vueRoutingEx3727.dart';
import 'package:learnswift/Screens/Courses/vue/vueRouting/Ex/vueRoutingEx3728.dart';
import 'package:learnswift/Screens/Courses/vue/vueRouting/Ex/vueRoutingEx3729.dart';
import 'package:learnswift/Screens/Courses/vue/vueRouting/Ex/vueRoutingEx3730.dart';
import 'package:learnswift/Screens/Courses/vue/vueRouting/Ex/vueRoutingEx3731.dart';
import 'package:learnswift/Screens/Courses/vue/vueRouting/Ex/vueRoutingEx3732.dart';
import 'package:learnswift/Screens/Courses/vue/vueRouting/Ex/vueRoutingEx3733.dart';
import 'package:learnswift/Screens/Courses/vue/vueRouting/Ex/vueRoutingEx3734.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class VueRoutingExMain extends StatefulWidget {
      final int id;
      final String title;
      final String description;
      final bool completed;
      Color color1;
      Color color2;

      VueRoutingExMain({
        super.key,
        required this.id,
        required this.title,
        required this.description,
        required this.completed,
        required this.color1,
        required this.color2,
      });

      @override
      State<VueRoutingExMain> createState() => _VueRoutingExMainState();
    }

    class _VueRoutingExMainState extends State<VueRoutingExMain> {
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

if (widget.id == 3720)
  VueRoutingEx3720(
    id: 3720,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3721)
  VueRoutingEx3721(
    id: 3721,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3722)
  VueRoutingEx3722(
    id: 3722,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3723)
  VueRoutingEx3723(
    id: 3723,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3724)
  VueRoutingEx3724(
    id: 3724,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3725)
  VueRoutingEx3725(
    id: 3725,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3726)
  VueRoutingEx3726(
    id: 3726,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3727)
  VueRoutingEx3727(
    id: 3727,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3728)
  VueRoutingEx3728(
    id: 3728,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3729)
  VueRoutingEx3729(
    id: 3729,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3730)
  VueRoutingEx3730(
    id: 3730,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3731)
  VueRoutingEx3731(
    id: 3731,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3732)
  VueRoutingEx3732(
    id: 3732,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3733)
  VueRoutingEx3733(
    id: 3733,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3734)
  VueRoutingEx3734(
    id: 3734,
    title: widget.title,
    completed: widget.completed,
  ),
            ],
          ),
        );
      }
    }
