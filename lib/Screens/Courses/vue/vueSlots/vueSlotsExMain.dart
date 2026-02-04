import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/vue/vueSlots/Ex/vueSlotsEx3765.dart';
import 'package:learnswift/Screens/Courses/vue/vueSlots/Ex/vueSlotsEx3766.dart';
import 'package:learnswift/Screens/Courses/vue/vueSlots/Ex/vueSlotsEx3767.dart';
import 'package:learnswift/Screens/Courses/vue/vueSlots/Ex/vueSlotsEx3768.dart';
import 'package:learnswift/Screens/Courses/vue/vueSlots/Ex/vueSlotsEx3769.dart';
import 'package:learnswift/Screens/Courses/vue/vueSlots/Ex/vueSlotsEx3770.dart';
import 'package:learnswift/Screens/Courses/vue/vueSlots/Ex/vueSlotsEx3771.dart';
import 'package:learnswift/Screens/Courses/vue/vueSlots/Ex/vueSlotsEx3772.dart';
import 'package:learnswift/Screens/Courses/vue/vueSlots/Ex/vueSlotsEx3773.dart';
import 'package:learnswift/Screens/Courses/vue/vueSlots/Ex/vueSlotsEx3774.dart';
import 'package:learnswift/Screens/Courses/vue/vueSlots/Ex/vueSlotsEx3775.dart';
import 'package:learnswift/Screens/Courses/vue/vueSlots/Ex/vueSlotsEx3776.dart';
import 'package:learnswift/Screens/Courses/vue/vueSlots/Ex/vueSlotsEx3777.dart';
import 'package:learnswift/Screens/Courses/vue/vueSlots/Ex/vueSlotsEx3778.dart';
import 'package:learnswift/Screens/Courses/vue/vueSlots/Ex/vueSlotsEx3779.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class VueSlotsExMain extends StatefulWidget {
      final int id;
      final String title;
      final String description;
      final bool completed;
      Color color1;
      Color color2;

      VueSlotsExMain({
        super.key,
        required this.id,
        required this.title,
        required this.description,
        required this.completed,
        required this.color1,
        required this.color2,
      });

      @override
      State<VueSlotsExMain> createState() => _VueSlotsExMainState();
    }

    class _VueSlotsExMainState extends State<VueSlotsExMain> {
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

if (widget.id == 3765)
  VueSlotsEx3765(
    id: 3765,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3766)
  VueSlotsEx3766(
    id: 3766,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3767)
  VueSlotsEx3767(
    id: 3767,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3768)
  VueSlotsEx3768(
    id: 3768,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3769)
  VueSlotsEx3769(
    id: 3769,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3770)
  VueSlotsEx3770(
    id: 3770,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3771)
  VueSlotsEx3771(
    id: 3771,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3772)
  VueSlotsEx3772(
    id: 3772,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3773)
  VueSlotsEx3773(
    id: 3773,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3774)
  VueSlotsEx3774(
    id: 3774,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3775)
  VueSlotsEx3775(
    id: 3775,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3776)
  VueSlotsEx3776(
    id: 3776,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3777)
  VueSlotsEx3777(
    id: 3777,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3778)
  VueSlotsEx3778(
    id: 3778,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3779)
  VueSlotsEx3779(
    id: 3779,
    title: widget.title,
    completed: widget.completed,
  ),
            ],
          ),
        );
      }
    }
