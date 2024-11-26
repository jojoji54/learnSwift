import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:learnswift/Screens/Courses/mainCoursesExercises.dart';
import 'package:learnswift/Singleton/purchaseManagerSingleton.dart';
import 'package:learnswift/data/Constant/Constant.dart';
import 'package:learnswift/data/courses/BooleanBasics/booleanBExModelList.dart';
import 'package:learnswift/data/courses/swiftBasics/sbExModelList.dart';
import 'package:learnswift/data/mainModel/CoursesMainModelList.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final allProvider = Provider.of<AllProvider>(context);
    return Scaffold(
        backgroundColor: const Color(0xFFf4f4f2),
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          toolbarHeight: 100, // Define la altura deseada del AppBar
          title: Text(
            'LearnSwift',
            style: TextStyle(
                fontFamily: 'InconsolataBold',
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
        ),
        body: Stack(
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.9,
                width: MediaQuery.of(context).size.width * 0.9,
                child: ZoomIn(
                  child: Lottie.asset('assets/lottie/buNoTrans.json',
                      fit: BoxFit.cover),
                )),
            ListView.builder(
              itemCount: coursesMainModelListEN.length,
              padding: const EdgeInsets.only(top: 20, bottom: 10),
              itemBuilder: (context, index) {
                final course = coursesMainModelListEN[index];
                // Filtrar la lista para obtener los elementos donde id = 0 y completed = true
                var filteredCounter = PurchaseManagerSingleton()
                    .purchaseAndDevelop
                    .where((item) =>
                        item.id == course.id && item.completed == true);
                return FadeIn(
                  child: Center(
                    // Este widget centra y limita el ancho del Card
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxHeight: 120, // Limita la altura máxima del Card
                        maxWidth: 1000, // Limita el ancho máximo del Card
                        minWidth: 120,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: const Color(0xFFf3f4f2),
                                        ),
                                        height: 50,
                                        width: 50,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Center(
                                            child: Text(
                                              (course.id + 1).toString(),
                                              style: TextStyle(
                                                fontFamily:
                                                    'InconsolataRegular',
                                                fontWeight: FontWeight.normal,
                                                color: Colors.orange,
                                                fontSize: 18,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          course.generalName,
                                          style: TextStyle(
                                            fontFamily: 'InconsolataRegular',
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
                                    HapticFeedback.lightImpact;
                                    getData(course.id, allProvider);
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            MainCoursesExercises(
                                                id: course.id,
                                                title: course.generalName),
                                      ),
                                    );
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: !course.alreadyBuy
                                            ? Colors.red
                                            : course.completed ==
                                                    filteredCounter.length
                                                ? Colors.green
                                                : filteredCounter.length == 0
                                                    ? Colors.grey
                                                    : filteredCounter.length >=
                                                            0
                                                        ? Colors.blue
                                                        : Colors.green,
                                      ),
                                      height: 50,
                                      width: 80,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Center(
                                          child: Text(
                                            !course.alreadyBuy
                                                ? 'Unlock'
                                                : course.completed ==
                                                        filteredCounter.length
                                                    ? 'Completed'
                                                    : filteredCounter.isEmpty
                                                        ? 'Start'
                                                        : filteredCounter
                                                                    .length >=
                                                                0
                                                            ? 'Continue'
                                                            : 'Start',
                                            style: TextStyle(
                                              fontFamily: 'InconsolataRegular',
                                              fontWeight: FontWeight.normal,
                                              color: Colors.white,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 16, right: 16, top: 8, bottom: 8),
                              child: LinearProgressBar(
                                maxSteps: course.totalCourses,
                                progressType:
                                    LinearProgressBar.progressTypeLinear,
                                currentStep: filteredCounter!.length,
                                progressColor: const Color(0xFFfbce72),
                                backgroundColor: const Color(0xFFeaeaea),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ));
  }

  void getData(int value, AllProvider allprovider) {
    setState(() {
      switch (value) {
        case 0:
          allprovider.setData(sbModel);
          allprovider.setCourseCategory(0);
          break;
         case 1:
          allprovider.setData(booleanBModel);
          allprovider.setCourseCategory(1);
          break;
        default:
          allprovider.setData([]);
          allprovider.setCourseCategory(0);
          break;
      }
      int cCount = allprovider.data!.where((course) => course.completed).length;
      allprovider.setCourseCount(cCount);
    });
  }
}
