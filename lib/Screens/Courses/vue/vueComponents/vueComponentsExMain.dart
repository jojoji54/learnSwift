import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/vue/vueComponents/Ex/vueComponentsEx3630.dart';
import 'package:learnswift/Screens/Courses/vue/vueComponents/Ex/vueComponentsEx3631.dart';
import 'package:learnswift/Screens/Courses/vue/vueComponents/Ex/vueComponentsEx3632.dart';
import 'package:learnswift/Screens/Courses/vue/vueComponents/Ex/vueComponentsEx3633.dart';
import 'package:learnswift/Screens/Courses/vue/vueComponents/Ex/vueComponentsEx3634.dart';
import 'package:learnswift/Screens/Courses/vue/vueComponents/Ex/vueComponentsEx3635.dart';
import 'package:learnswift/Screens/Courses/vue/vueComponents/Ex/vueComponentsEx3636.dart';
import 'package:learnswift/Screens/Courses/vue/vueComponents/Ex/vueComponentsEx3637.dart';
import 'package:learnswift/Screens/Courses/vue/vueComponents/Ex/vueComponentsEx3638.dart';
import 'package:learnswift/Screens/Courses/vue/vueComponents/Ex/vueComponentsEx3639.dart';
import 'package:learnswift/Screens/Courses/vue/vueComponents/Ex/vueComponentsEx3640.dart';
import 'package:learnswift/Screens/Courses/vue/vueComponents/Ex/vueComponentsEx3641.dart';
import 'package:learnswift/Screens/Courses/vue/vueComponents/Ex/vueComponentsEx3642.dart';
import 'package:learnswift/Screens/Courses/vue/vueComponents/Ex/vueComponentsEx3643.dart';
import 'package:learnswift/Screens/Courses/vue/vueComponents/Ex/vueComponentsEx3644.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class VueComponentsExMain extends StatefulWidget {
      final int id;
      final String title;
      final String description;
      final bool completed;
      Color color1;
      Color color2;

      VueComponentsExMain({
        super.key,
        required this.id,
        required this.title,
        required this.description,
        required this.completed,
        required this.color1,
        required this.color2,
      });

      @override
      State<VueComponentsExMain> createState() => _VueComponentsExMainState();
    }

    class _VueComponentsExMainState extends State<VueComponentsExMain> {
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

if (widget.id == 3630)
  VueComponentsEx3630(
    id: 3630,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3631)
  VueComponentsEx3631(
    id: 3631,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3632)
  VueComponentsEx3632(
    id: 3632,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3633)
  VueComponentsEx3633(
    id: 3633,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3634)
  VueComponentsEx3634(
    id: 3634,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3635)
  VueComponentsEx3635(
    id: 3635,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3636)
  VueComponentsEx3636(
    id: 3636,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3637)
  VueComponentsEx3637(
    id: 3637,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3638)
  VueComponentsEx3638(
    id: 3638,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3639)
  VueComponentsEx3639(
    id: 3639,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3640)
  VueComponentsEx3640(
    id: 3640,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3641)
  VueComponentsEx3641(
    id: 3641,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3642)
  VueComponentsEx3642(
    id: 3642,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3643)
  VueComponentsEx3643(
    id: 3643,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3644)
  VueComponentsEx3644(
    id: 3644,
    title: widget.title,
    completed: widget.completed,
  ),
            ],
          ),
        );
      }
    }
