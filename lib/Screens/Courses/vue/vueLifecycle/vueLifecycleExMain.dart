import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/vue/vueLifecycle/Ex/vueLifecycleEx3705.dart';
import 'package:learnswift/Screens/Courses/vue/vueLifecycle/Ex/vueLifecycleEx3706.dart';
import 'package:learnswift/Screens/Courses/vue/vueLifecycle/Ex/vueLifecycleEx3707.dart';
import 'package:learnswift/Screens/Courses/vue/vueLifecycle/Ex/vueLifecycleEx3708.dart';
import 'package:learnswift/Screens/Courses/vue/vueLifecycle/Ex/vueLifecycleEx3709.dart';
import 'package:learnswift/Screens/Courses/vue/vueLifecycle/Ex/vueLifecycleEx3710.dart';
import 'package:learnswift/Screens/Courses/vue/vueLifecycle/Ex/vueLifecycleEx3711.dart';
import 'package:learnswift/Screens/Courses/vue/vueLifecycle/Ex/vueLifecycleEx3712.dart';
import 'package:learnswift/Screens/Courses/vue/vueLifecycle/Ex/vueLifecycleEx3713.dart';
import 'package:learnswift/Screens/Courses/vue/vueLifecycle/Ex/vueLifecycleEx3714.dart';
import 'package:learnswift/Screens/Courses/vue/vueLifecycle/Ex/vueLifecycleEx3715.dart';
import 'package:learnswift/Screens/Courses/vue/vueLifecycle/Ex/vueLifecycleEx3716.dart';
import 'package:learnswift/Screens/Courses/vue/vueLifecycle/Ex/vueLifecycleEx3717.dart';
import 'package:learnswift/Screens/Courses/vue/vueLifecycle/Ex/vueLifecycleEx3718.dart';
import 'package:learnswift/Screens/Courses/vue/vueLifecycle/Ex/vueLifecycleEx3719.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class VueLifecycleExMain extends StatefulWidget {
      final int id;
      final String title;
      final String description;
      final bool completed;
      Color color1;
      Color color2;

      VueLifecycleExMain({
        super.key,
        required this.id,
        required this.title,
        required this.description,
        required this.completed,
        required this.color1,
        required this.color2,
      });

      @override
      State<VueLifecycleExMain> createState() => _VueLifecycleExMainState();
    }

    class _VueLifecycleExMainState extends State<VueLifecycleExMain> {
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

if (widget.id == 3705)
  VueLifecycleEx3705(
    id: 3705,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3706)
  VueLifecycleEx3706(
    id: 3706,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3707)
  VueLifecycleEx3707(
    id: 3707,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3708)
  VueLifecycleEx3708(
    id: 3708,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3709)
  VueLifecycleEx3709(
    id: 3709,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3710)
  VueLifecycleEx3710(
    id: 3710,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3711)
  VueLifecycleEx3711(
    id: 3711,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3712)
  VueLifecycleEx3712(
    id: 3712,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3713)
  VueLifecycleEx3713(
    id: 3713,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3714)
  VueLifecycleEx3714(
    id: 3714,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3715)
  VueLifecycleEx3715(
    id: 3715,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3716)
  VueLifecycleEx3716(
    id: 3716,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3717)
  VueLifecycleEx3717(
    id: 3717,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3718)
  VueLifecycleEx3718(
    id: 3718,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3719)
  VueLifecycleEx3719(
    id: 3719,
    title: widget.title,
    completed: widget.completed,
  ),
            ],
          ),
        );
      }
    }
