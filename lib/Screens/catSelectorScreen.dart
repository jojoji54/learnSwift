import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:learnswift/Screens/Courses/mainCoursesExercises.dart';
import 'package:learnswift/Widgets/catIcon.dart';
import 'package:learnswift/Widgets/comingSoonButton.dart';
import 'package:learnswift/data/Constant/Constant.dart';
import 'package:learnswift/data/mainModel/Swift/CoursesMainModelListES.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class CatSelectorScreen extends StatefulWidget {
  String title;
  Color color1;
  Color color2;
  String description;
  CatSelectorScreen(
      {super.key,
      required this.title,
      required this.color1,
      required this.color2,
      required this.description});

  @override
  State<CatSelectorScreen> createState() => _CatSelectorScreenState();
}

class _CatSelectorScreenState extends State<CatSelectorScreen> {
  @override
  Widget build(BuildContext context) {
    final allProvider = Provider.of<AllProvider>(context);
    return Scaffold(
        backgroundColor: const Color(0xFFf4f4f2),
        appBar: AppBar(
          flexibleSpace: AnimatedContainer(
            duration: const Duration(seconds: 2), // Duración de la transición
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [widget.color1, widget.color2],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          toolbarHeight: 100, // Define la altura deseada del AppBar
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    widget.title,
                    style: TextStyle(
                        fontFamily: 'InconsolataBold',
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.black),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: CatIcon(
                  title: widget.title,
                  description: widget.description,
                ), // Aquí añades el ícono de información
              ),
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
              itemCount: allProvider.data.length + 1, // +1 para el botón
              padding: const EdgeInsets.only(top: 20, bottom: 10),
              itemBuilder: (context, index) {
                if (index == allProvider.data.length) {
                  // Último elemento: el botón "Próximamente"
                  return const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: ComingSoonButton(),
                  );
                }
                final course = allProvider.data[index];
                // Filtrar la lista para obtener los elementos donde id = 0 y completed = true

                final filteredItems = allProvider.data[index].catExercise
                    .where((item) => item.completed == true)
                    .toList();

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
                          crossAxisAlignment: CrossAxisAlignment
                              .start, // Asegura la alineación correcta
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment
                                  .start, // Permite alinear elementos con texto largo
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                            child: ShaderMask(
                                              shaderCallback: (bounds) =>
                                                  LinearGradient(
                                                colors: [
                                                  widget.color1,
                                                  widget.color2
                                                ],
                                                begin: Alignment.topLeft,
                                                end: Alignment.bottomRight,
                                              ).createShader(bounds),
                                              child: Text(
                                                (course.id).toString(),
                                                style: const TextStyle(
                                                  fontFamily:
                                                      'InconsolataRegular',
                                                  fontWeight: FontWeight.bold,
                                                  color:
                                                      Colors.white, // Fallback
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      // Ajuste para el texto largo
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.4, // Limita el ancho
                                          child: Text(
                                            course.generalName,
                                            style: const TextStyle(
                                              fontFamily: 'InconsolataRegular',
                                              fontWeight: FontWeight.normal,
                                              color: Colors.black,
                                              fontSize: 17,
                                            ),
                                            softWrap:
                                                true, // Permite múltiples líneas
                                            overflow: TextOverflow
                                                .visible, // Hace que el texto sea visible
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    HapticFeedback.lightImpact;
                                    Constant.catIndex = course.id;
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            MainCoursesExercises(
                                          id: course.id,
                                          exPtrogress: filteredItems.length,
                                          title: course.generalName,
                                          allProvider: allProvider,
                                          description: course.description,
                                          color1: widget.color1,
                                          color2: widget.color2,
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
                                            : coursesSwiftMainModelListES
                                                        .length ==
                                                    filteredItems.length
                                                ? Colors.green
                                                : filteredItems.isEmpty
                                                    ? Colors.grey
                                                    : filteredItems.isNotEmpty
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
                                                  : filteredItems.length ==
                                                          coursesSwiftMainModelListES
                                                              .length
                                                      ? FontAwesomeIcons.trophy
                                                      : filteredItems.isEmpty
                                                          ? FontAwesomeIcons
                                                              .play
                                                          : filteredItems
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
                                currentStep: filteredItems.length,
                                progressColor: widget.color1,
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
}
