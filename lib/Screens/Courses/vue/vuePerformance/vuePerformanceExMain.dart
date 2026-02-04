import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/vue/vuePerformance/Ex/vuePerformanceEx3795.dart';
import 'package:learnswift/Screens/Courses/vue/vuePerformance/Ex/vuePerformanceEx3796.dart';
import 'package:learnswift/Screens/Courses/vue/vuePerformance/Ex/vuePerformanceEx3797.dart';
import 'package:learnswift/Screens/Courses/vue/vuePerformance/Ex/vuePerformanceEx3798.dart';
import 'package:learnswift/Screens/Courses/vue/vuePerformance/Ex/vuePerformanceEx3799.dart';
import 'package:learnswift/Screens/Courses/vue/vuePerformance/Ex/vuePerformanceEx3800.dart';
import 'package:learnswift/Screens/Courses/vue/vuePerformance/Ex/vuePerformanceEx3801.dart';
import 'package:learnswift/Screens/Courses/vue/vuePerformance/Ex/vuePerformanceEx3802.dart';
import 'package:learnswift/Screens/Courses/vue/vuePerformance/Ex/vuePerformanceEx3803.dart';
import 'package:learnswift/Screens/Courses/vue/vuePerformance/Ex/vuePerformanceEx3804.dart';
import 'package:learnswift/Screens/Courses/vue/vuePerformance/Ex/vuePerformanceEx3805.dart';
import 'package:learnswift/Screens/Courses/vue/vuePerformance/Ex/vuePerformanceEx3806.dart';
import 'package:learnswift/Screens/Courses/vue/vuePerformance/Ex/vuePerformanceEx3807.dart';
import 'package:learnswift/Screens/Courses/vue/vuePerformance/Ex/vuePerformanceEx3808.dart';
import 'package:learnswift/Screens/Courses/vue/vuePerformance/Ex/vuePerformanceEx3809.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class VuePerformanceExMain extends StatefulWidget {
      final int id;
      final String title;
      final String description;
      final bool completed;
      Color color1;
      Color color2;

      VuePerformanceExMain({
        super.key,
        required this.id,
        required this.title,
        required this.description,
        required this.completed,
        required this.color1,
        required this.color2,
      });

      @override
      State<VuePerformanceExMain> createState() => _VuePerformanceExMainState();
    }

    class _VuePerformanceExMainState extends State<VuePerformanceExMain> {
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

if (widget.id == 3795)
  VuePerformanceEx3795(
    id: 3795,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3796)
  VuePerformanceEx3796(
    id: 3796,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3797)
  VuePerformanceEx3797(
    id: 3797,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3798)
  VuePerformanceEx3798(
    id: 3798,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3799)
  VuePerformanceEx3799(
    id: 3799,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3800)
  VuePerformanceEx3800(
    id: 3800,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3801)
  VuePerformanceEx3801(
    id: 3801,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3802)
  VuePerformanceEx3802(
    id: 3802,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3803)
  VuePerformanceEx3803(
    id: 3803,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3804)
  VuePerformanceEx3804(
    id: 3804,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3805)
  VuePerformanceEx3805(
    id: 3805,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3806)
  VuePerformanceEx3806(
    id: 3806,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3807)
  VuePerformanceEx3807(
    id: 3807,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3808)
  VuePerformanceEx3808(
    id: 3808,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3809)
  VuePerformanceEx3809(
    id: 3809,
    title: widget.title,
    completed: widget.completed,
  ),
            ],
          ),
        );
      }
    }
