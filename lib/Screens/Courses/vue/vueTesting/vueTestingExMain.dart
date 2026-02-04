import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/vue/vueTesting/Ex/vueTestingEx3810.dart';
import 'package:learnswift/Screens/Courses/vue/vueTesting/Ex/vueTestingEx3811.dart';
import 'package:learnswift/Screens/Courses/vue/vueTesting/Ex/vueTestingEx3812.dart';
import 'package:learnswift/Screens/Courses/vue/vueTesting/Ex/vueTestingEx3813.dart';
import 'package:learnswift/Screens/Courses/vue/vueTesting/Ex/vueTestingEx3814.dart';
import 'package:learnswift/Screens/Courses/vue/vueTesting/Ex/vueTestingEx3815.dart';
import 'package:learnswift/Screens/Courses/vue/vueTesting/Ex/vueTestingEx3816.dart';
import 'package:learnswift/Screens/Courses/vue/vueTesting/Ex/vueTestingEx3817.dart';
import 'package:learnswift/Screens/Courses/vue/vueTesting/Ex/vueTestingEx3818.dart';
import 'package:learnswift/Screens/Courses/vue/vueTesting/Ex/vueTestingEx3819.dart';
import 'package:learnswift/Screens/Courses/vue/vueTesting/Ex/vueTestingEx3820.dart';
import 'package:learnswift/Screens/Courses/vue/vueTesting/Ex/vueTestingEx3821.dart';
import 'package:learnswift/Screens/Courses/vue/vueTesting/Ex/vueTestingEx3822.dart';
import 'package:learnswift/Screens/Courses/vue/vueTesting/Ex/vueTestingEx3823.dart';
import 'package:learnswift/Screens/Courses/vue/vueTesting/Ex/vueTestingEx3824.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class VueTestingExMain extends StatefulWidget {
      final int id;
      final String title;
      final String description;
      final bool completed;
      Color color1;
      Color color2;

      VueTestingExMain({
        super.key,
        required this.id,
        required this.title,
        required this.description,
        required this.completed,
        required this.color1,
        required this.color2,
      });

      @override
      State<VueTestingExMain> createState() => _VueTestingExMainState();
    }

    class _VueTestingExMainState extends State<VueTestingExMain> {
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

if (widget.id == 3810)
  VueTestingEx3810(
    id: 3810,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3811)
  VueTestingEx3811(
    id: 3811,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3812)
  VueTestingEx3812(
    id: 3812,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3813)
  VueTestingEx3813(
    id: 3813,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3814)
  VueTestingEx3814(
    id: 3814,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3815)
  VueTestingEx3815(
    id: 3815,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3816)
  VueTestingEx3816(
    id: 3816,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3817)
  VueTestingEx3817(
    id: 3817,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3818)
  VueTestingEx3818(
    id: 3818,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3819)
  VueTestingEx3819(
    id: 3819,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3820)
  VueTestingEx3820(
    id: 3820,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3821)
  VueTestingEx3821(
    id: 3821,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3822)
  VueTestingEx3822(
    id: 3822,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3823)
  VueTestingEx3823(
    id: 3823,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3824)
  VueTestingEx3824(
    id: 3824,
    title: widget.title,
    completed: widget.completed,
  ),
            ],
          ),
        );
      }
    }
