import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/vue/vueComputed/Ex/vueComputedEx3675.dart';
import 'package:learnswift/Screens/Courses/vue/vueComputed/Ex/vueComputedEx3676.dart';
import 'package:learnswift/Screens/Courses/vue/vueComputed/Ex/vueComputedEx3677.dart';
import 'package:learnswift/Screens/Courses/vue/vueComputed/Ex/vueComputedEx3678.dart';
import 'package:learnswift/Screens/Courses/vue/vueComputed/Ex/vueComputedEx3679.dart';
import 'package:learnswift/Screens/Courses/vue/vueComputed/Ex/vueComputedEx3680.dart';
import 'package:learnswift/Screens/Courses/vue/vueComputed/Ex/vueComputedEx3681.dart';
import 'package:learnswift/Screens/Courses/vue/vueComputed/Ex/vueComputedEx3682.dart';
import 'package:learnswift/Screens/Courses/vue/vueComputed/Ex/vueComputedEx3683.dart';
import 'package:learnswift/Screens/Courses/vue/vueComputed/Ex/vueComputedEx3684.dart';
import 'package:learnswift/Screens/Courses/vue/vueComputed/Ex/vueComputedEx3685.dart';
import 'package:learnswift/Screens/Courses/vue/vueComputed/Ex/vueComputedEx3686.dart';
import 'package:learnswift/Screens/Courses/vue/vueComputed/Ex/vueComputedEx3687.dart';
import 'package:learnswift/Screens/Courses/vue/vueComputed/Ex/vueComputedEx3688.dart';
import 'package:learnswift/Screens/Courses/vue/vueComputed/Ex/vueComputedEx3689.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class VueComputedExMain extends StatefulWidget {
      final int id;
      final String title;
      final String description;
      final bool completed;
      Color color1;
      Color color2;

      VueComputedExMain({
        super.key,
        required this.id,
        required this.title,
        required this.description,
        required this.completed,
        required this.color1,
        required this.color2,
      });

      @override
      State<VueComputedExMain> createState() => _VueComputedExMainState();
    }

    class _VueComputedExMainState extends State<VueComputedExMain> {
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

if (widget.id == 3675)
  VueComputedEx3675(
    id: 3675,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3676)
  VueComputedEx3676(
    id: 3676,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3677)
  VueComputedEx3677(
    id: 3677,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3678)
  VueComputedEx3678(
    id: 3678,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3679)
  VueComputedEx3679(
    id: 3679,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3680)
  VueComputedEx3680(
    id: 3680,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3681)
  VueComputedEx3681(
    id: 3681,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3682)
  VueComputedEx3682(
    id: 3682,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3683)
  VueComputedEx3683(
    id: 3683,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3684)
  VueComputedEx3684(
    id: 3684,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3685)
  VueComputedEx3685(
    id: 3685,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3686)
  VueComputedEx3686(
    id: 3686,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3687)
  VueComputedEx3687(
    id: 3687,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3688)
  VueComputedEx3688(
    id: 3688,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3689)
  VueComputedEx3689(
    id: 3689,
    title: widget.title,
    completed: widget.completed,
  ),
            ],
          ),
        );
      }
    }
