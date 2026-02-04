import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/vue/vueBasics/Ex/vueBasicsEx3600.dart';
import 'package:learnswift/Screens/Courses/vue/vueBasics/Ex/vueBasicsEx3601.dart';
import 'package:learnswift/Screens/Courses/vue/vueBasics/Ex/vueBasicsEx3602.dart';
import 'package:learnswift/Screens/Courses/vue/vueBasics/Ex/vueBasicsEx3603.dart';
import 'package:learnswift/Screens/Courses/vue/vueBasics/Ex/vueBasicsEx3604.dart';
import 'package:learnswift/Screens/Courses/vue/vueBasics/Ex/vueBasicsEx3605.dart';
import 'package:learnswift/Screens/Courses/vue/vueBasics/Ex/vueBasicsEx3606.dart';
import 'package:learnswift/Screens/Courses/vue/vueBasics/Ex/vueBasicsEx3607.dart';
import 'package:learnswift/Screens/Courses/vue/vueBasics/Ex/vueBasicsEx3608.dart';
import 'package:learnswift/Screens/Courses/vue/vueBasics/Ex/vueBasicsEx3609.dart';
import 'package:learnswift/Screens/Courses/vue/vueBasics/Ex/vueBasicsEx3610.dart';
import 'package:learnswift/Screens/Courses/vue/vueBasics/Ex/vueBasicsEx3611.dart';
import 'package:learnswift/Screens/Courses/vue/vueBasics/Ex/vueBasicsEx3612.dart';
import 'package:learnswift/Screens/Courses/vue/vueBasics/Ex/vueBasicsEx3613.dart';
import 'package:learnswift/Screens/Courses/vue/vueBasics/Ex/vueBasicsEx3614.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class VueBasicsExMain extends StatefulWidget {
      final int id;
      final String title;
      final String description;
      final bool completed;
      Color color1;
      Color color2;

      VueBasicsExMain({
        super.key,
        required this.id,
        required this.title,
        required this.description,
        required this.completed,
        required this.color1,
        required this.color2,
      });

      @override
      State<VueBasicsExMain> createState() => _VueBasicsExMainState();
    }

    class _VueBasicsExMainState extends State<VueBasicsExMain> {
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

if (widget.id == 3600)
  VueBasicsEx3600(
    id: 3600,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3601)
  VueBasicsEx3601(
    id: 3601,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3602)
  VueBasicsEx3602(
    id: 3602,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3603)
  VueBasicsEx3603(
    id: 3603,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3604)
  VueBasicsEx3604(
    id: 3604,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3605)
  VueBasicsEx3605(
    id: 3605,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3606)
  VueBasicsEx3606(
    id: 3606,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3607)
  VueBasicsEx3607(
    id: 3607,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3608)
  VueBasicsEx3608(
    id: 3608,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3609)
  VueBasicsEx3609(
    id: 3609,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3610)
  VueBasicsEx3610(
    id: 3610,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3611)
  VueBasicsEx3611(
    id: 3611,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3612)
  VueBasicsEx3612(
    id: 3612,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3613)
  VueBasicsEx3613(
    id: 3613,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3614)
  VueBasicsEx3614(
    id: 3614,
    title: widget.title,
    completed: widget.completed,
  ),
            ],
          ),
        );
      }
    }
