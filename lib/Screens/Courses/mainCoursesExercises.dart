import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'package:learnswift/data/Constant/Constant.dart';
import 'package:learnswift/data/LanguajeModel/languajeMainModelListEN.dart'; // languagePurchaseManagerHive
import 'package:learnswift/data/courses/coursesExModel.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import '../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';

class MainCoursesExercises extends StatefulWidget {
  final int id;
  final String title;
  AllProvider? allProvider;
  String description;
  Color color1;
  Color color2;
  int exPtrogress;

  MainCoursesExercises({
    super.key,
    required this.id,
    required this.exPtrogress,
    required this.title,
    this.allProvider,
    required this.description,
    required this.color1,
    required this.color2,
  });

  @override
  State<MainCoursesExercises> createState() => _MainCoursesExercisesState();
}

class _MainCoursesExercisesState extends State<MainCoursesExercises> {
  final InAppPurchase inAppPurchase = InAppPurchase.instance;

  StreamSubscription<List<PurchaseDetails>>? _purchaseSub;

  bool isLoading = false;
  int courseID = 100000000;

  bool _restoreInProgress = false;
  bool _restoredSomething = false;
  Timer? _restoreTimer;

  @override
  void initState() {
    super.initState();
    listenToPurchaseUpdates();
  }

  @override
  void dispose() {
    _purchaseSub?.cancel();
    _restoreTimer?.cancel();
    super.dispose();
  }

  AllProvider _provider(BuildContext context) {
    // Si te lo pasan por constructor, úsalo; si no, tira del Provider.
    return widget.allProvider ?? Provider.of<AllProvider>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    final allProvider = Provider.of<AllProvider>(context);

    if (allProvider.data[widget.id].catExercise.isEmpty) {
      return Scaffold(
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
        body: const Center(child: CircularProgressIndicator()),
      );
    }

    final exercises = allProvider.data[widget.id].catExercise;
    final completedCount = exercises.where((item) => item.completed == true).length;

    return Scaffold(
      backgroundColor: const Color(0xFFf4f4f2),
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
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.9,
            width: MediaQuery.of(context).size.width * 0.9,
            child: ZoomIn(
              child: Lottie.asset('assets/lottie/buNoTrans.json', fit: BoxFit.cover),
            ),
          ),
          Column(
            children: [
              ConstrainedBox(
                constraints: const BoxConstraints(maxHeight: 120, maxWidth: 1000),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: LinearProgressBar(
                    minHeight: 15,
                    maxSteps: exercises.length,
                    progressType: LinearProgressBar.progressTypeLinear,
                    currentStep: completedCount,
                    progressColor: widget.color1,
                    backgroundColor: const Color(0xFFeaeaea),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: exercises.length,
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  itemBuilder: (context, index) {
                    final course = exercises[index];

                    // ✅ Clave: “desbloqueado” si:
                    // - ejercicio comprado (alreadyBuy)
                    // - pack del lenguaje actual (everythingUnlocked)
                    // - pack global (everythingPurchased)
                    final bool isUnlocked = course.alreadyBuy ||
                        allProvider.everythingPurchased;

                    final bool completed = course.completed;

                    return FadeIn(
                      child: Center(
                        child: ConstrainedBox(
                          constraints: const BoxConstraints(maxHeight: 120, maxWidth: 1000),
                          child: Card(
                            elevation: 2,
                            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: const Color(0xFFf3f4f2),
                                        ),
                                        height: 50,
                                        width: 50,
                                        child: Center(
                                          child: Text(
                                            '${index + 1}', // ✅ sin id++ (evita números raros)
                                            style: const TextStyle(
                                              fontFamily: 'InconsolataRegular',
                                              fontWeight: FontWeight.normal,
                                              color: Colors.orange,
                                              fontSize: 18,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          course.exerciseName,
                                          style: const TextStyle(
                                            fontFamily: 'InconsolataRegular',
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black,
                                            fontSize: 16,
                                          ),
                                          softWrap: true,
                                          overflow: TextOverflow.visible,
                                        ),
                                      ),
                                    ),
                                    (isLoading == true && courseID == course.id)
                                        ? const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: CircularProgressIndicator(
                                              color: Color.fromARGB(255, 19, 51, 106),
                                            ),
                                          )
                                        : InkWell(
                                            onTap: () {
                                              if (!isUnlocked) {
                                                courseID = course.id;
                                                _showUnlockDialog(course);
                                              } else {
                                                navToEx(
                                                  Constant.catIndex,
                                                  course.id,
                                                  course.exerciseName,
                                                  widget.description,
                                                  completed,
                                                  widget.color1,
                                                  widget.color2,
                                                  allProvider,
                                                );
                                              }
                                            },
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10),
                                                  color: !isUnlocked
                                                      ? Colors.red
                                                      : completed
                                                          ? Colors.green
                                                          : Colors.grey,
                                                ),
                                                height: 50,
                                                width: 80,
                                                child: Center(
                                                  child: Icon(
                                                    !isUnlocked
                                                        ? FontAwesomeIcons.coins
                                                        : completed
                                                            ? FontAwesomeIcons.trophy
                                                            : FontAwesomeIcons.code,
                                                    size: 15,
                                                    color: Colors.white,
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

  Future<void> unlockExercise(CoursesExModel course) async {
    final bool available = await inAppPurchase.isAvailable();
    if (!available) {
      Fluttertoast.showToast(
        msg: AppLocalizations.of(context)!.purchaseUnavailable,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.red,
        textColor: Colors.white,
      );
      setState(() => isLoading = false);
      return;
    }

    final ProductDetailsResponse response =
        await inAppPurchase.queryProductDetails({course.productID});

    if (response.productDetails.isNotEmpty) {
      final ProductDetails productDetails = response.productDetails.first;
      final PurchaseParam purchaseParam = PurchaseParam(productDetails: productDetails);
      inAppPurchase.buyNonConsumable(purchaseParam: purchaseParam);

      Fluttertoast.showToast(
        msg: AppLocalizations.of(context)!.purchaseInitiated,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.green,
        textColor: Colors.white,
      );

      // ⚠️ No pongas isLoading=false aquí; espera a _handlePurchase()
    } else {
      Fluttertoast.showToast(
        msg: AppLocalizations.of(context)!.productNotFound,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.orange,
        textColor: Colors.white,
      );
      setState(() => isLoading = false);
    }
  }

  void listenToPurchaseUpdates() {
    _purchaseSub?.cancel();
    _purchaseSub = inAppPurchase.purchaseStream.listen(
      (List<PurchaseDetails> purchaseDetailsList) {
        for (final purchaseDetails in purchaseDetailsList) {
          _handlePurchase(purchaseDetails);
        }
      },
      onError: (e) {
        debugPrint('purchaseStream error: $e');
        if (mounted) setState(() => isLoading = false);
      },
    );
  }

  void _handlePurchase(PurchaseDetails purchaseDetails) async {
    try {
      if (purchaseDetails.status == PurchaseStatus.purchased ||
          purchaseDetails.status == PurchaseStatus.restored) {
        if (_restoreInProgress) _restoredSomething = true;

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
        Fluttertoast.showToast(
          msg: AppLocalizations.of(context)!.purchaseError,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.red,
          textColor: Colors.white,
        );
        setState(() {
          isLoading = false;
          _restoreInProgress = false;
        });
        debugPrint('Error durante la compra: ${purchaseDetails.error}');
      } else if (purchaseDetails.status == PurchaseStatus.pending) {
        Fluttertoast.showToast(
          msg: AppLocalizations.of(context)!.purchasePending,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.orange,
          textColor: Colors.white,
        );
        debugPrint('Compra pendiente. Esperando confirmación...');
      }

      if (purchaseDetails.pendingCompletePurchase) {
        await inAppPurchase.completePurchase(purchaseDetails);
      }
    } catch (e) {
      Fluttertoast.showToast(
        msg: AppLocalizations.of(context)!.purchaseException,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.redAccent,
        textColor: Colors.white,
      );
      setState(() {
        isLoading = false;
        _restoreInProgress = false;
      });
      debugPrint('Excepción durante el manejo de la compra: $e');
    }
  }

  Future<void> _verifyPurchase(PurchaseDetails purchaseDetails) async {
    debugPrint('Verificando compra para el producto: ${purchaseDetails.productID}');
    // TODO: verificación real en servidor si lo necesitas
  }

  void _unlockContent(String productID) {
    final allProvider = _provider(context);

    // 1) Pack del lenguaje actual
    if (productID == allProvider.lenguajeProductID) {
      languagePurchaseManagerHive.updateLanguagePurchase(
        Constant.languajeID,
        purchased: true,
      );
      allProvider.setEverythingUnlocked(true);

      setState(() {
        isLoading = false;
        _restoreInProgress = false;
      });

      debugPrint('Lenguaje desbloqueado: $productID');
      return;
    }

    // 2) Compra de ejercicio individual
    final exercise = allProvider.data[widget.id].catExercise.firstWhere(
      (ex) => ex.productID == productID,
      orElse: () => throw Exception('Exercise not found for productID=$productID'),
    );

    purchaseManagerHive.updatePurchase(
      exercise.id,
      purchased: true,
    );

    setState(() {
      exercise.alreadyBuy = true;
      isLoading = false;
      _restoreInProgress = false;
    });

    debugPrint('Ejercicio desbloqueado: $productID');
  }

  void _showUnlockDialog(CoursesExModel course) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          title: Row(
            children: [
              const Icon(Icons.lock_open, color: Colors.deepOrange),
              const SizedBox(width: 8),
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
                  AppLocalizations.of(context)!.unlockExerciseContent(course.exerciseName),
                  style: const TextStyle(
                    fontFamily: 'InconsolataRegular',
                    fontWeight: FontWeight.normal,
                    color: Colors.black87,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 16),
                Divider(color: Colors.grey.shade300),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(Icons.shopping_cart, color: Colors.deepOrange),
                    const SizedBox(width: 8),
                    Text(
                      AppLocalizations.of(context)!.buyExercise,
                      style: const TextStyle(color: Colors.black87),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    const Icon(Icons.all_inclusive, color: Colors.green),
                    const SizedBox(width: 8),
                    Text(
                      AppLocalizations.of(context)!.buyAllExercises,
                      style: const TextStyle(color: Colors.black87),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    const Icon(Icons.restore, color: Colors.blue),
                    const SizedBox(width: 8),
                    Text(
                      AppLocalizations.of(context)!.restorePurchases,
                      style: const TextStyle(color: Colors.black87),
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
                  setState(() => isLoading = true);
                  Navigator.of(context).pop();
                  await unlockExercise(course);
                },
                icon: const Icon(Icons.shopping_cart_outlined),
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
                  setState(() => isLoading = true);
                  Navigator.of(context).pop();
                  await _unlockAllExercisesForCurrentLanguage();
                },
                icon: const Icon(Icons.all_inclusive),
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
                  setState(() => isLoading = true);
                  Navigator.of(context).pop();
                  await restorePurchases();
                },
                icon: const Icon(Icons.restore),
                label: Text(AppLocalizations.of(context)!.restorePurchases),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.blue,
                  side: const BorderSide(color: Colors.blue),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Future<void> _unlockAllExercisesForCurrentLanguage() async {
    final bool available = await inAppPurchase.isAvailable();
    if (!available) {
      Fluttertoast.showToast(
        msg: AppLocalizations.of(context)!.purchaseUnavailable,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.red,
        textColor: Colors.white,
      );
      setState(() => isLoading = false);
      return;
    }

    final allProvider = _provider(context);
    final languageProductId = allProvider.lenguajeProductID;

    if (languageProductId.isEmpty) {
      Fluttertoast.showToast(
        msg: AppLocalizations.of(context)!.productNotFound,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.orange,
        textColor: Colors.white,
      );
      setState(() => isLoading = false);
      return;
    }

    final ProductDetailsResponse response =
        await inAppPurchase.queryProductDetails({languageProductId});

    if (response.productDetails.isNotEmpty) {
      final productDetails = response.productDetails.first;
      final purchaseParam = PurchaseParam(productDetails: productDetails);
      inAppPurchase.buyNonConsumable(purchaseParam: purchaseParam);

      Fluttertoast.showToast(
        msg: AppLocalizations.of(context)!.purchaseInitiated,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.green,
        textColor: Colors.white,
      );

      // ⚠️ No pongas isLoading=false aquí; espera a _handlePurchase()
    } else {
      Fluttertoast.showToast(
        msg: AppLocalizations.of(context)!.productNotFound,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.orange,
        textColor: Colors.white,
      );
      setState(() => isLoading = false);
    }
  }

  Future<void> restorePurchases() async {
    try {
      _restoreTimer?.cancel();
      _restoreInProgress = true;
      _restoredSomething = false;

      // ✅ esto es lo que realmente dispara la restauración
      await inAppPurchase.restorePurchases();

      // Fallback: si no llega nada al stream en unos segundos, corta loading y avisa.
      _restoreTimer = Timer(const Duration(seconds: 4), () {
        if (!mounted) return;
        if (_restoreInProgress && !_restoredSomething) {
          Fluttertoast.showToast(
            msg: AppLocalizations.of(context)!.noPurchasesToRestore,
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            backgroundColor: Colors.orange,
            textColor: Colors.white,
          );
          setState(() {
            isLoading = false;
            _restoreInProgress = false;
          });
        }
      });
    } catch (e) {
      Fluttertoast.showToast(
        msg: AppLocalizations.of(context)!.unexpectedRestoreError,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.red,
        textColor: Colors.white,
      );
      debugPrint('Error inesperado durante la restauración: $e');
      setState(() {
        isLoading = false;
        _restoreInProgress = false;
      });
    }
  }

  void navToEx(
    int courseCat,
    int id,
    String title,
    String description,
    bool completed,
    Color color1,
    Color color2,
    AllProvider allProvider,
  ) {
    final course = allProvider.data.firstWhere(
      (course) => course.id == courseCat,
      orElse: () => throw Exception('Course not found'),
    );

    if (course.builder != null) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => course.builder!(
            context,
            id,
            title,
            description,
            completed,
            color1,
            color2,
          ),
        ),
      );
    } else {
      debugPrint('No builder defined for course category $courseCat');
    }
  }
}
