import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:learnswift/Screens/Courses/mainCoursesExercises.dart';
import 'package:learnswift/Singleton/purchaseManagerSingleton.dart';
import 'package:learnswift/Widgets/InfoIcon.dart';
import 'package:learnswift/Widgets/comingSoonButton.dart';
import 'package:learnswift/data/Constant/Constant.dart';
import 'package:learnswift/data/courses/BooleanBasics/booleanBExModelListEN.dart';
import 'package:learnswift/data/courses/BooleanBasics/booleanBExModelListES.dart';
import 'package:learnswift/data/courses/ifElseBasics/ifElseExModelList%20copy.dart';
import 'package:learnswift/data/courses/ifElseBasics/ifElseExModelListEN.dart';
import 'package:learnswift/data/courses/swiftBasics/sbExModelListEN.dart';
import 'package:learnswift/data/courses/swiftBasics/sbExModelListES.dart';
import 'package:learnswift/data/mainModel/CoursesMainModelListEN.dart';
import 'package:learnswift/data/mainModel/CoursesMainModelListES.dart';
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
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                FontAwesomeIcons.info,
                color: Colors.transparent,
              ),
              Text(
                'LearnSwift',
                style: TextStyle(
                    fontFamily: 'InconsolataBold',
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              const InfoIcon(), // Aquí añades el ícono de información
            ],
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
              itemCount: (Constant.languaje == 'es'
                      ? coursesMainModelListES.length
                      : coursesMainModelListEN.length) +
                  1, // +1 para el botón
              padding: const EdgeInsets.only(top: 20, bottom: 10),
              itemBuilder: (context, index) {
                if (index ==
                    (Constant.languaje == 'es'
                        ? coursesMainModelListES.length
                        : coursesMainModelListEN.length)) {
                  // Último elemento: el botón "Próximamente"
                  return const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: ComingSoonButton(),
                  );
                }
                final course = Constant.languaje == 'es'
                    ? coursesMainModelListES[index]
                    : coursesMainModelListEN[index];
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
                                    if (Constant.languaje == 'es') {
                                      getDataES(course.id, allProvider);
                                    } else {
                                      // Lógica para otro idioma
                                      getDataEN(course.id, allProvider);
                                    }

                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            MainCoursesExercises(
                                          id: course.id,
                                          title: course.generalName,
                                          allProvider: allProvider,
                                        ),
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
                                          child: Icon(
                                              !course.alreadyBuy
                                                  ? FontAwesomeIcons.lock
                                                  : filteredCounter.isNotEmpty
                                                      ? FontAwesomeIcons.trophy
                                                      : filteredCounter.isEmpty
                                                          ? FontAwesomeIcons
                                                              .play
                                                          : filteredCounter
                                                                      .length >=
                                                                  0
                                                              ? FontAwesomeIcons
                                                                  .play
                                                              : FontAwesomeIcons
                                                                  .play,
                                              size: 15,
                                              color: Colors.white),
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

  void getDataEN(int value, AllProvider allprovider) {
    setState(() {
      switch (value) {
        case 0:
          allprovider.setData(sbModelEN);
          allprovider.setCourseCategory(0);
          break;
        case 1:
          allprovider.setData(booleanBModelEN);
          allprovider.setCourseCategory(1);
          break;
        case 2:
          allprovider.setData(ifElseModelEN);
          allprovider.setCourseCategory(2);
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

  void getDataES(int value, AllProvider allprovider) {
    setState(() {
      switch (value) {
        case 0:
          allprovider.setData(sbModelES);
          allprovider.setCourseCategory(0);
          break;
        case 1:
          allprovider.setData(booleanBModelES);
          allprovider.setCourseCategory(1);
          break;
        case 2:
          allprovider.setData(ifElseModelES);
          allprovider.setCourseCategory(2);
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
