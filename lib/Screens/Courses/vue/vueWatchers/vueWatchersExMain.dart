import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/vue/vueWatchers/Ex/vueWatchersEx3690.dart';
import 'package:learnswift/Screens/Courses/vue/vueWatchers/Ex/vueWatchersEx3691.dart';
import 'package:learnswift/Screens/Courses/vue/vueWatchers/Ex/vueWatchersEx3692.dart';
import 'package:learnswift/Screens/Courses/vue/vueWatchers/Ex/vueWatchersEx3693.dart';
import 'package:learnswift/Screens/Courses/vue/vueWatchers/Ex/vueWatchersEx3694.dart';
import 'package:learnswift/Screens/Courses/vue/vueWatchers/Ex/vueWatchersEx3695.dart';
import 'package:learnswift/Screens/Courses/vue/vueWatchers/Ex/vueWatchersEx3696.dart';
import 'package:learnswift/Screens/Courses/vue/vueWatchers/Ex/vueWatchersEx3697.dart';
import 'package:learnswift/Screens/Courses/vue/vueWatchers/Ex/vueWatchersEx3698.dart';
import 'package:learnswift/Screens/Courses/vue/vueWatchers/Ex/vueWatchersEx3699.dart';
import 'package:learnswift/Screens/Courses/vue/vueWatchers/Ex/vueWatchersEx3700.dart';
import 'package:learnswift/Screens/Courses/vue/vueWatchers/Ex/vueWatchersEx3701.dart';
import 'package:learnswift/Screens/Courses/vue/vueWatchers/Ex/vueWatchersEx3702.dart';
import 'package:learnswift/Screens/Courses/vue/vueWatchers/Ex/vueWatchersEx3703.dart';
import 'package:learnswift/Screens/Courses/vue/vueWatchers/Ex/vueWatchersEx3704.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class VueWatchersExMain extends StatefulWidget {
      final int id;
      final String title;
      final String description;
      final bool completed;
      Color color1;
      Color color2;

      VueWatchersExMain({
        super.key,
        required this.id,
        required this.title,
        required this.description,
        required this.completed,
        required this.color1,
        required this.color2,
      });

      @override
      State<VueWatchersExMain> createState() => _VueWatchersExMainState();
    }

    class _VueWatchersExMainState extends State<VueWatchersExMain> {
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

if (widget.id == 3690)
  VueWatchersEx3690(
    id: 3690,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3691)
  VueWatchersEx3691(
    id: 3691,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3692)
  VueWatchersEx3692(
    id: 3692,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3693)
  VueWatchersEx3693(
    id: 3693,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3694)
  VueWatchersEx3694(
    id: 3694,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3695)
  VueWatchersEx3695(
    id: 3695,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3696)
  VueWatchersEx3696(
    id: 3696,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3697)
  VueWatchersEx3697(
    id: 3697,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3698)
  VueWatchersEx3698(
    id: 3698,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3699)
  VueWatchersEx3699(
    id: 3699,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3700)
  VueWatchersEx3700(
    id: 3700,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3701)
  VueWatchersEx3701(
    id: 3701,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3702)
  VueWatchersEx3702(
    id: 3702,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3703)
  VueWatchersEx3703(
    id: 3703,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3704)
  VueWatchersEx3704(
    id: 3704,
    title: widget.title,
    completed: widget.completed,
  ),
            ],
          ),
        );
      }
    }
