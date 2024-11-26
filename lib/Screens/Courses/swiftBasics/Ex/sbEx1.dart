import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:learnswift/sharedPreferences/sharedPreferencesData.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../Singleton/purchaseManagerSingleton.dart';

class SBEx1 extends StatefulWidget {
  final String title;
  final int id;
  const SBEx1({super.key, required this.title, required this.id});

  @override
  State<SBEx1> createState() => _SBEx1State();
}

class _SBEx1State extends State<SBEx1> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0; // Contador de intentos fallidos
  Color _inputTextColor = Colors.orange; // Color inicial del texto

  // Mostrar diálogo genérico
  void _showDialog(String title, String content, {Color? titleColor}) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            title,
            style: TextStyle(
              fontFamily: 'InconsolataRegular',
              fontWeight: FontWeight.bold,
              color: titleColor ?? Colors.black,
            ),
          ),
          content: SingleChildScrollView(
            child: Text(
              content,
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
              child: Text(AppLocalizations.of(context)!.close),
            ),
          ],
        );
      },
    );
  }

  // Validar el texto ingresado
  void _validateInput(AllProvider allprovider) async {
    final variableRegex = RegExp(r'^var\s+\w+\s*=\s*".*"$');
    String userInput = _controller.text.trim();
    userInput = userInput.replaceAll('“', '"').replaceAll('”', '"');

    if (variableRegex.hasMatch(userInput)) {
      PurchaseManagerSingleton().updateItemAndSave(
        widget.id,
        completed: true,
      );
      await SharedPreferencesData.guardarPurchasesAndDevelopmentList(
        PurchaseManagerSingleton().purchaseAndDevelop,
      );
      _controller.clear();
      try {
        allprovider.data[0].completed = true;
        allprovider.setData(allprovider.data);
        int nC = allprovider.completedCount + 1;
        allprovider.setCourseCount(nC);
      } catch (e) {
        debugPrint(e.toString());
      }
      setState(() {
        _inputTextColor = Colors.green;
      });

      _showDialog(
        AppLocalizations.of(context)!.correctTitle,
        AppLocalizations.of(context)!.correctContent,
        titleColor: Colors.green,
      );
    } else {
      setState(() {
        _inputTextColor = Colors.orange;
        _failedAttempts++;
      });

      if (_failedAttempts == 1) {
        _showDialog(
          AppLocalizations.of(context)!.hint1Title,
          AppLocalizations.of(context)!.hint1Content,
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          AppLocalizations.of(context)!.hint2Title,
          AppLocalizations.of(context)!.hint2Content,
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          AppLocalizations.of(context)!.solutionTitle,
          AppLocalizations.of(context)!.solutionContent,
          titleColor: Colors.red,
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(AppLocalizations.of(context)!.tryAgain(
                _failedAttempts)), // Con formato dinámico
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final allProvider = Provider.of<AllProvider>(context);
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButton",
              onPressed: () {
                _showDialog(
                  AppLocalizations.of(context)!.exerciseInstructionsTitle,
                  AppLocalizations.of(context)!.exerciseInstructionsContent,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButton",
              onPressed: () {
                _validateInput(allProvider);
              },
              backgroundColor: Colors.black,
              child: const Icon(Icons.play_arrow, color: Colors.white),
            ),
          ),
          if (_failedAttempts >= 3)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                heroTag: "helpButton",
                onPressed: () {
                  _showDialog(
                    AppLocalizations.of(context)!.solutionTitle,
                    AppLocalizations.of(context)!.solutionContent,
                    titleColor: Colors.red,
                  );
                },
                backgroundColor: Colors.red,
                child: const Icon(Icons.help, color: Colors.white),
              ),
            ),
        ],
      ),
      body: FadeIn(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 1000,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      fontFamily: 'InconsolataRegular',
                      fontSize: 18,
                    ),
                    children: [
                      TextSpan(
                        text: "1  ${AppLocalizations.of(context)!.varKeyword} ",
                        style: const TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "greeting ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= ",
                        style: TextStyle(color: Colors.black),
                      ),
                      WidgetSpan(
                        child: SizedBox(
                          width: 300,
                          height: 40,
                          child: TextField(
                            controller: _controller,
                            style: TextStyle(
                              fontFamily: 'InconsolataRegular',
                              fontSize: 18,
                              color: _inputTextColor,
                            ),
                            decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.symmetric(vertical: 8),
                              hintText: AppLocalizations.of(context)!
                                  .enterYourCodeHere,
                              hintStyle: const TextStyle(color: Colors.grey),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
