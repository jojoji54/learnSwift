import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:learnswift/Screens/Courses/BooleanBasics/booleanBExMain.dart';
import 'package:learnswift/Screens/Courses/LoopsBasics/loopsExMain.dart';
import 'package:learnswift/Screens/Courses/SwitchStatements/switchStatementsExMain.dart';
import 'package:learnswift/Screens/Courses/ifElse/ifElseExMain.dart';
import 'package:learnswift/Screens/Courses/swiftBasics/swiftBasicExMain.dart';
import 'package:learnswift/Singleton/purchaseManagerSingleton.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'package:learnswift/data/Constant/Constant.dart';
import 'package:learnswift/data/courses/coursesExModel.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/sharedPreferences/sharedPreferencesData.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class MainCoursesExercises extends StatefulWidget {
  final int id;
  final String title;
  AllProvider? allProvider;
  String description;
  Color color1;
  Color color2;
  MainCoursesExercises(
      {super.key,
      required this.id,
      required this.title,
      this.allProvider,
      required this.description,
      required this.color1,
      required this.color2});

  @override
  State<MainCoursesExercises> createState() => _MainCoursesExercisesState();
}

class _MainCoursesExercisesState extends State<MainCoursesExercises> {
  final InAppPurchase inAppPurchase = InAppPurchase.instance;
  bool isLoading = false;
  int courseID = 100000000;
  @override
  void initState() {
    super.initState();
    listenToPurchaseUpdates();
  }

  @override
  Widget build(BuildContext context) {
    final allProvider = Provider.of<AllProvider>(context);
    if (allProvider.data.isEmpty) {
      return Scaffold(
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
                child: CatInfoIcon(
                  description: widget.description,
                ), // Aquí añades el ícono de información
              ),
            ],
          ),
        ),
        body: const Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

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
                child: CatInfoIcon(
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
                    progressColor: widget.color1,
                    backgroundColor: const Color(0xFFeaeaea),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: allProvider.data.length,
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  itemBuilder: (context, index) {
                    final course = allProvider.data[index];
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
                                    isLoading == true && courseID == course.id
                                        ? Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: CircularProgressIndicator(
                                              color: const Color.fromARGB(
                                                  255, 19, 51, 106),
                                            ),
                                          )
                                        : InkWell(
                                            onTap: () {
                                              allProvider.setEverythingUnlocked(
                                                  Constant.everythingunlocked);
                                              if (!course.alreadyBuy &&
                                                  !allProvider
                                                      .everythingPurchased) {
                                                courseID = course.id;
                                                _showUnlockDialog(
                                                    course); // Muestra el diálogo para desbloquear
                                              } else {
                                                navToEx(
                                                    allProvider.courseCategory,
                                                    course.id,
                                                    course.exerciseName,
                                                    widget.description,
                                                    course.completed,
                                                    widget.color1,
                                                    widget.color2);
                                              }
                                            },
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: !course.alreadyBuy &&
                                                          !allProvider
                                                              .everythingPurchased
                                                      ? Colors.red
                                                      : course.completed
                                                          ? Colors.green
                                                          : Colors.grey,
                                                ),
                                                height: 50,
                                                width: 80,
                                                child: Center(
                                                  child: Icon(
                                                      !course.alreadyBuy &&
                                                              !allProvider
                                                                  .everythingPurchased
                                                          ? FontAwesomeIcons
                                                              .coins
                                                          : course.completed
                                                              ? FontAwesomeIcons
                                                                  .trophy
                                                              : FontAwesomeIcons
                                                                  .code,
                                                      size: 15,
                                                      color: Colors.white),
                                                  /* Text(
                                              !course.alreadyBuy &&
                                                      !allProvider
                                                          .everythingPurchased
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
                                            ), */
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

  Future<void> unlockExercise(CoursesExModel course) async {
    // Verifica si las compras están disponibles
    final bool available = await inAppPurchase.isAvailable();
    if (!available) {
      Fluttertoast.showToast(
        msg: AppLocalizations.of(context)!.purchaseUnavailable,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.red,
        textColor: Colors.white,
      );
      setState(() {
        isLoading = false;
      });
      return;
    }

    // Consulta el producto correspondiente
    final Set<String> ids = {course.productID};
    final ProductDetailsResponse response =
        await inAppPurchase.queryProductDetails(ids);

    if (response.productDetails.isNotEmpty) {
      final ProductDetails productDetails = response.productDetails.first;

      // Inicia la compra
      final PurchaseParam purchaseParam =
          PurchaseParam(productDetails: productDetails);
      inAppPurchase.buyNonConsumable(purchaseParam: purchaseParam);

      // Muestra un mensaje de confirmación
      Fluttertoast.showToast(
        msg: AppLocalizations.of(context)!.purchaseInitiated,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.green,
        textColor: Colors.white,
      );
    } else {
      // Maneja el caso donde el producto no fue encontrado
      Fluttertoast.showToast(
        msg: AppLocalizations.of(context)!.productNotFound,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.orange,
        textColor: Colors.white,
      );
      setState(() {
        isLoading = false;
      });
    }
  }

  void listenToPurchaseUpdates() {
    try {
      inAppPurchase.purchaseStream
          .listen((List<PurchaseDetails> purchaseDetailsList) {
        for (var purchaseDetails in purchaseDetailsList) {
          _handlePurchase(purchaseDetails);
        }
      });
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  void _handlePurchase(PurchaseDetails purchaseDetails) async {
    try {
      if (purchaseDetails.status == PurchaseStatus.purchased ||
          purchaseDetails.status == PurchaseStatus.restored) {
        // Compra completada con éxito
        await _verifyPurchase(purchaseDetails);
        _unlockContent(purchaseDetails.productID);

        Fluttertoast.showToast(
          msg: AppLocalizations.of(context)!.purchaseSuccess,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.green,
          textColor: Colors.white,
        );
      } else if (purchaseDetails.status == PurchaseStatus.error) {
        // Maneja errores durante la compra
        Fluttertoast.showToast(
          msg: AppLocalizations.of(context)!.purchaseError,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.red,
          textColor: Colors.white,
        );
        setState(() {
          isLoading = false;
        });

        debugPrint('Error durante la compra: ${purchaseDetails.error}');
      } else if (purchaseDetails.status == PurchaseStatus.pending) {
        // Compra pendiente
        Fluttertoast.showToast(
          msg: AppLocalizations.of(context)!.purchasePending,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.orange,
          textColor: Colors.white,
        );

        debugPrint('Compra pendiente. Esperando confirmación...');
      }

      // Completa la compra para notificar a la plataforma
      if (purchaseDetails.pendingCompletePurchase) {
        await inAppPurchase.completePurchase(purchaseDetails);
      }
    } catch (e) {
      // Maneja excepciones y muestra un mensaje al usuario
      Fluttertoast.showToast(
        msg: AppLocalizations.of(context)!.purchaseException,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.redAccent,
        textColor: Colors.white,
      );
      setState(() {
        isLoading = false;
      });
      debugPrint('Excepción durante el manejo de la compra: $e');
    }
  }

  Future<void> _verifyPurchase(PurchaseDetails purchaseDetails) async {
    // Verifica el recibo en tu servidor o de manera local
    print('Verificando compra para el producto: ${purchaseDetails.productID}');
    // Para desarrollo, asumimos que siempre es válida
  }

  void _unlockContent(String productID) async {
    // Encuentra el curso correspondiente por productID
    final course = widget.allProvider!.data
        .firstWhere((course) => course.productID == productID);
    PurchaseManagerSingleton().updateItemAndSave(
      course.id,
      purchased: true,
    );
    await SharedPreferencesData.guardarPurchasesAndDevelopmentList(
      PurchaseManagerSingleton().purchaseAndDevelop,
    );

    if (productID == "com.mrrubik.learnswift.everythingunlocked") {
      widget.allProvider!.setEverythingUnlocked(true);
    }
    setState(() {
      course.alreadyBuy = true; // Marca como comprado
      isLoading = false;
    });

    print('Contenido desbloqueado para el producto: $productID');
  }

  void _showUnlockDialog(CoursesExModel course) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          title: Row(
            children: [
              Icon(Icons.lock_open, color: Colors.deepOrange),
              SizedBox(width: 8),
              Text(
                AppLocalizations.of(context)!.unlockExerciseTitle,
                style: const TextStyle(
                  fontFamily: 'InconsolataRegular',
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppLocalizations.of(context)!
                      .unlockExerciseContent(course.exerciseName),
                  style: const TextStyle(
                    fontFamily: 'InconsolataRegular',
                    fontWeight: FontWeight.normal,
                    color: Colors.black87,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 16),
                Divider(color: Colors.grey.shade300),
                SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.shopping_cart, color: Colors.deepOrange),
                    SizedBox(width: 8),
                    Text(
                      AppLocalizations.of(context)!.buyExercise,
                      style: TextStyle(color: Colors.black87),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Icon(Icons.all_inclusive, color: Colors.green),
                    SizedBox(width: 8),
                    Text(
                      AppLocalizations.of(context)!.buyAllExercises,
                      style: TextStyle(color: Colors.black87),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Icon(Icons.restore, color: Colors.blue),
                    SizedBox(width: 8),
                    Text(
                      AppLocalizations.of(context)!.restorePurchases,
                      style: TextStyle(color: Colors.black87),
                    ),
                  ],
                ),
              ],
            ),
          ),
          actionsAlignment: MainAxisAlignment.spaceEvenly,
          actions: [
            Center(
              child: ElevatedButton.icon(
                onPressed: () async {
                  setState(() {
                    isLoading = true;
                  });
                  Navigator.of(context).pop(); // Cerrar diálogo
                  await unlockExercise(course); // Comprar este ejercicio
                },
                icon: Icon(Icons.shopping_cart_outlined),
                label: Text(AppLocalizations.of(context)!.buyExercise),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                  foregroundColor: Colors.white,
                ),
              ),
            ),
            Center(
              child: ElevatedButton.icon(
                onPressed: () async {
                  setState(() {
                    isLoading = true;
                  });
                  Navigator.of(context).pop(); // Cerrar diálogo
                  await _unlockAllExercises(); // Comprar todos los ejercicios
                },
                icon: Icon(Icons.all_inclusive),
                label: Text(AppLocalizations.of(context)!.buyAllExercises),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                ),
              ),
            ),
            Center(
              child: OutlinedButton.icon(
                onPressed: () async {
                  setState(() {
                    isLoading = true;
                  });
                  Navigator.of(context).pop(); // Cerrar diálogo
                  restorePurchases(); // Restaurar compras
                },
                icon: Icon(Icons.restore),
                label: Text(AppLocalizations.of(context)!.restorePurchases),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.blue,
                  side: BorderSide(color: Colors.blue),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Future<void> _unlockAllExercises() async {
    final Set<String> ids = {
      'com.mrrubik.learnswift.everythingunlocked'
    }; // ID del producto para desbloquear todo
    final ProductDetailsResponse response =
        await inAppPurchase.queryProductDetails(ids);

    if (response.productDetails.isNotEmpty) {
      final ProductDetails productDetails = response.productDetails.first;

      final PurchaseParam purchaseParam =
          PurchaseParam(productDetails: productDetails);
      inAppPurchase.buyNonConsumable(purchaseParam: purchaseParam);

      // Muestra un mensaje de confirmación
      Fluttertoast.showToast(
        msg: AppLocalizations.of(context)!.purchaseInitiated,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.green,
        textColor: Colors.white,
      );
    } else {
      // Maneja el caso donde el producto no fue encontrado
      Fluttertoast.showToast(
        msg: AppLocalizations.of(context)!.productNotFound,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.orange,
        textColor: Colors.white,
      );
    }
    setState(() {
      isLoading = false;
    });
  }

  void restorePurchases() {
    try {
      inAppPurchase.purchaseStream
          .listen((List<PurchaseDetails> purchaseDetailsList) {
        bool restored = false; // Indica si se restauraron compras exitosamente.

        for (var purchase in purchaseDetailsList) {
          if (purchase.status == PurchaseStatus.purchased ||
              purchase.status == PurchaseStatus.restored) {
            restored = true;
            // Desbloquear el contenido correspondiente
            _unlockContent(purchase.productID);
          } else if (purchase.status == PurchaseStatus.error) {
            // Maneja el error de la compra
            Fluttertoast.showToast(
              msg: AppLocalizations.of(context)!.restoreError,
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              backgroundColor: Colors.red,
              textColor: Colors.white,
            );
            print('Error durante la restauración: ${purchase.error}');
            setState(() {
              isLoading = false;
            });
          }
        }

        if (restored) {
          Fluttertoast.showToast(
            msg: AppLocalizations.of(context)!.restoreSuccess,
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            backgroundColor: Colors.green,
            textColor: Colors.white,
          );
          print('Restauración de compras completada.');
          setState(() {
            isLoading = false;
          });
        } else {
          Fluttertoast.showToast(
            msg: AppLocalizations.of(context)!.noPurchasesToRestore,
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            backgroundColor: Colors.orange,
            textColor: Colors.white,
          );
          print('No hay compras para restaurar.');
          setState(() {
            isLoading = false;
          });
        }
      });

      print('Intentando restaurar compras...');
    } catch (e) {
      // Manejamos cualquier error no previsto
      Fluttertoast.showToast(
        msg: AppLocalizations.of(context)!.unexpectedRestoreError,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.red,
        textColor: Colors.white,
      );
      print('Error inesperado durante la restauración: $e');
      setState(() {
        isLoading = false;
      });
    }
  }

  void navToEx(int courseCat, int id, String title, String description,
      bool completed, Color color1, Color color2) {
    switch (courseCat) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SwiftBasicExMain(
              id: id,
              title: title,
              description: description,
              completed: completed,
              color1: color1,
              color2: color2,
            ),
          ),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BooleanBasicExMain(
                id: id,
                title: title,
                description: description,
                completed: completed,color1: color1, color2: color2,),
          ),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => IfElseExMain(
                id: id,
                title: title,
                description: description,
                completed: completed, color1: color1,
              color2: color2,),
          ),
        );
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SwitchStatementsMain(
              id: id,
              title: title,
              description: description,
              completed: completed,
              color1: color1,
              color2: color2,
            ),
          ),
        );
        break;
      case 4:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LoopsExMain(
              id: id,
              title: title,
              description: description,
              completed: completed,
              color1: color1,
              color2: color2,
            ),
          ),
        );
        break;
      default:
        break;
    }
  }
}
