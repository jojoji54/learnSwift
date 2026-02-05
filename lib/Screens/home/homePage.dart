import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:learnswift/Screens/catSelectorScreen.dart';
import 'package:learnswift/Widgets/CustomBottomNavigationBar.dart';
import 'package:learnswift/Widgets/DynamicAppBar.dart';
import 'package:learnswift/data/Constant/Constant.dart';
import 'package:learnswift/data/LanguajeModel/languajeMainModel.dart';
import 'package:learnswift/data/LanguajeModel/languajeMainModelListEN.dart';
import 'package:learnswift/data/LanguajeModel/languajeMainModelListES.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../data/LanguajeModel/languajeMainModelListZH.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();

    // OJO: esto borra también el idioma guardado, compras, etc.
    // Si lo necesitas solo para debug, déjalo; si no, quítalo.
    clearSharedPreferences();
  }

  Future<void> clearSharedPreferences() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }

  List<ProgrammingItem> _itemsForLocale(BuildContext context) {
    final code = Localizations.localeOf(context).languageCode.toLowerCase();

    switch (code) {
      case 'es':
        return programmingItemsES;
      case 'zh':
        return programmingItemsZH;
      default:
        return programmingItemsEN;
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    final items = _itemsForLocale(context);
    final languages = items.where((item) => item.id <= 12).toList();
    final frameworks = items.where((item) => item.id > 12).toList();

    return Scaffold(
      backgroundColor: const Color(0xFFf4f4f2),
      appBar: DynamicAppBar(),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: _selectedIndex,
        onTabChange: (index) {
          setState(() => _selectedIndex = index);
          _pageController.jumpToPage(index);
        },
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
          PageView(
            controller: _pageController,
            onPageChanged: (index) => setState(() => _selectedIndex = index),
            children: [
              // Si en algún sitio necesitas el texto del tab, úsalo desde l10n:
              // l10n.homeTabLanguages / l10n.homeTabFrameworks
              _buildPage(context, languages),
              _buildPage(context, frameworks),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPage(BuildContext context, List<ProgrammingItem> items) {
    final allProvider = Provider.of<AllProvider>(context);

    return ListView.builder(
      itemCount: items.length,
      padding: const EdgeInsets.only(top: 20, bottom: 10),
      itemBuilder: (context, index) {
        final course = items[index];

        return Column(
          children: [
            FadeIn(
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxHeight: 120,
                    maxWidth: 1000,
                    minWidth: 120,
                  ),
                  child: Card(
                    elevation: 2,
                    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color(0xFFf3f4f2),
                                    ),
                                    height: 50,
                                    width: 50,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Center(
                                        child: ShaderMask(
                                          shaderCallback: (bounds) => LinearGradient(
                                            colors: [course.color1, course.color2],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                          ).createShader(bounds),
                                          child: Text(
                                            (course.id).toString(),
                                            style: const TextStyle(
                                              fontFamily: 'InconsolataRegular',
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontSize: 18,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      course.name,
                                      style: TextStyle(
                                        fontFamily: 'InconsolataRegular',
                                        fontWeight: FontWeight.bold,
                                        color: course.color1,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                HapticFeedback.lightImpact();

                                if (course.isActive) {
                                  allProvider.setData(course.coursesList);
                                  allProvider.setEverythingUnlocked(course.alreadyBuy);
                                  allProvider.setLenguajeProductID(course.productID);
                                  Constant.languajeID = course.id;

                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => CatSelectorScreen(
                                        title: course.name,
                                        color1: course.color1,
                                        color2: course.color2,
                                        description: course.description,
                                      ),
                                    ),
                                  );
                                } else {
                                  _showDialog(context);
                                }
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: !course.isActive ? Colors.grey.withOpacity(0.5) : null,
                                    gradient: course.isActive
                                        ? LinearGradient(
                                            colors: [course.color2, course.color1],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                          )
                                        : null,
                                  ),
                                  height: 50,
                                  width: 80,
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Icon(
                                        // icon se decide abajo (para mantener const, si quieres, quítalo)
                                        FontAwesomeIcons.play,
                                        size: 15,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        // Nota: para que el icon cambie correctamente (lock/play),
                        // quita el const de Icon y usa esto:
                        // Icon(!course.isActive ? FontAwesomeIcons.lock : FontAwesomeIcons.play, ...)
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void _showDialog(BuildContext context, {Color? titleColor}) {
    final l10n = AppLocalizations.of(context)!;

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Center(
            child: Text(
              "😊",
              style: TextStyle(
                fontFamily: 'InconsolataRegular',
                fontWeight: FontWeight.bold,
                color: titleColor ?? Colors.black,
              ),
            ),
          ),
          content: SingleChildScrollView(
            child: Text(
              l10n.homeUnavailableBody,
              style: const TextStyle(
                fontFamily: 'InconsolataRegular',
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.normal,
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(l10n.commonClose),
            ),
          ],
        );
      },
    );
  }
}
