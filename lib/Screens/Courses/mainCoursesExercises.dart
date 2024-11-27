import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:learnswift/Screens/Courses/BooleanBasics/booleanBExMain.dart';
import 'package:learnswift/Screens/Courses/ifElse/ifElseExMain.dart';
import 'package:learnswift/Screens/Courses/swiftBasics/swiftBasicExMain.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class MainCoursesExercises extends StatefulWidget {
  final int id;
  final String title;
  const MainCoursesExercises(
      {super.key, required this.id, required this.title});

  @override
  State<MainCoursesExercises> createState() => _MainCoursesExercisesState();
}

class _MainCoursesExercisesState extends State<MainCoursesExercises> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final allProvider = Provider.of<AllProvider>(context);
    if (allProvider.data.isEmpty) {
      return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: const Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xFFf4f4f2),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        toolbarHeight: 100,
        title: Text(
          widget.title,
          style: const TextStyle(
            fontFamily: 'InconsolataBold',
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.9,
            width: MediaQuery.of(context).size.width * 0.9,
            child: ZoomIn(
              child: Lottie.asset(
                'assets/lottie/buNoTrans.json',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              ConstrainedBox(
                constraints: const BoxConstraints(
                  maxHeight: 120,
                  maxWidth: 1000,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: LinearProgressBar(
                    minHeight: 15,
                    maxSteps: allProvider.data.length,
                    progressType: LinearProgressBar.progressTypeLinear,
                    currentStep: allProvider.completedCount,
                    progressColor: const Color.fromARGB(255, 114, 251, 153),
                    backgroundColor: const Color(0xFFeaeaea),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: allProvider.data!.length,
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  itemBuilder: (context, index) {
                    final course = allProvider.data![index];
                    return FadeIn(
                      child: Center(
                        child: ConstrainedBox(
                          constraints: const BoxConstraints(
                            maxHeight: 120,
                            maxWidth: 1000,
                          ),
                          child: Card(
                            elevation: 2,
                            margin: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          /* Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: const Color(0xFFf3f4f2),
                                            ),
                                            height: 50,
                                            width: 50,
                                            child: Center(
                                              child: Text(
                                                (course.id + 1).toString(),
                                                style: const TextStyle(
                                                  fontFamily:
                                                      'InconsolataRegular',
                                                  fontWeight: FontWeight.normal,
                                                  color: Colors.orange,
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ),
                                          ), */
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              course.exerciseName,
                                              style: const TextStyle(
                                                fontFamily:
                                                    'InconsolataRegular',
                                                fontWeight: FontWeight.normal,
                                                color: Colors.black,
                                                fontSize: 18,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        navToEx(allProvider.courseCategory,
                                            course.id, course.exerciseName);
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: !course.alreadyBuy
                                                ? Colors.red
                                                : course.completed
                                                    ? Colors.green
                                                    : Colors.grey,
                                          ),
                                          height: 50,
                                          width: 80,
                                          child: Center(
                                            child: Text(
                                              !course.alreadyBuy
                                                  ? 'Unlock'
                                                  : course.completed
                                                      ? 'Completed'
                                                      : 'Start',
                                              style: const TextStyle(
                                                fontFamily:
                                                    'InconsolataRegular',
                                                fontWeight: FontWeight.normal,
                                                color: Colors.white,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void navToEx(int courseCat, int id, String title) {
    switch (courseCat) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SwiftBasicExMain(id: id, title: title),
          ),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BooleanBasicExMain(id: id, title: title),
          ),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => IfElseExMain(id: id, title: title),
          ),
        );
        break;
      default:
        break;
    }
  }
}
