import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/vue/vueTemplates/Ex/vueTemplatesEx3615.dart';
import 'package:learnswift/Screens/Courses/vue/vueTemplates/Ex/vueTemplatesEx3616.dart';
import 'package:learnswift/Screens/Courses/vue/vueTemplates/Ex/vueTemplatesEx3617.dart';
import 'package:learnswift/Screens/Courses/vue/vueTemplates/Ex/vueTemplatesEx3618.dart';
import 'package:learnswift/Screens/Courses/vue/vueTemplates/Ex/vueTemplatesEx3619.dart';
import 'package:learnswift/Screens/Courses/vue/vueTemplates/Ex/vueTemplatesEx3620.dart';
import 'package:learnswift/Screens/Courses/vue/vueTemplates/Ex/vueTemplatesEx3621.dart';
import 'package:learnswift/Screens/Courses/vue/vueTemplates/Ex/vueTemplatesEx3622.dart';
import 'package:learnswift/Screens/Courses/vue/vueTemplates/Ex/vueTemplatesEx3623.dart';
import 'package:learnswift/Screens/Courses/vue/vueTemplates/Ex/vueTemplatesEx3624.dart';
import 'package:learnswift/Screens/Courses/vue/vueTemplates/Ex/vueTemplatesEx3625.dart';
import 'package:learnswift/Screens/Courses/vue/vueTemplates/Ex/vueTemplatesEx3626.dart';
import 'package:learnswift/Screens/Courses/vue/vueTemplates/Ex/vueTemplatesEx3627.dart';
import 'package:learnswift/Screens/Courses/vue/vueTemplates/Ex/vueTemplatesEx3628.dart';
import 'package:learnswift/Screens/Courses/vue/vueTemplates/Ex/vueTemplatesEx3629.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class VueTemplatesExMain extends StatefulWidget {
      final int id;
      final String title;
      final String description;
      final bool completed;
      Color color1;
      Color color2;

      VueTemplatesExMain({
        super.key,
        required this.id,
        required this.title,
        required this.description,
        required this.completed,
        required this.color1,
        required this.color2,
      });

      @override
      State<VueTemplatesExMain> createState() => _VueTemplatesExMainState();
    }

    class _VueTemplatesExMainState extends State<VueTemplatesExMain> {
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

if (widget.id == 3615)
  VueTemplatesEx3615(
    id: 3615,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3616)
  VueTemplatesEx3616(
    id: 3616,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3617)
  VueTemplatesEx3617(
    id: 3617,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3618)
  VueTemplatesEx3618(
    id: 3618,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3619)
  VueTemplatesEx3619(
    id: 3619,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3620)
  VueTemplatesEx3620(
    id: 3620,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3621)
  VueTemplatesEx3621(
    id: 3621,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3622)
  VueTemplatesEx3622(
    id: 3622,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3623)
  VueTemplatesEx3623(
    id: 3623,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3624)
  VueTemplatesEx3624(
    id: 3624,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3625)
  VueTemplatesEx3625(
    id: 3625,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3626)
  VueTemplatesEx3626(
    id: 3626,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3627)
  VueTemplatesEx3627(
    id: 3627,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3628)
  VueTemplatesEx3628(
    id: 3628,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3629)
  VueTemplatesEx3629(
    id: 3629,
    title: widget.title,
    completed: widget.completed,
  ),
            ],
          ),
        );
      }
    }
