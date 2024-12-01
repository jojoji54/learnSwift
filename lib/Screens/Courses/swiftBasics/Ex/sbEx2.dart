import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:learnswift/Singleton/purchaseManagerSingleton.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:learnswift/sharedPreferences/sharedPreferencesData.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SBEx2 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;
  const SBEx2({super.key, required this.title, required this.id, required this.completed});

  @override
  State<SBEx2> createState() => _SBEx2State();
}

class _SBEx2State extends State<SBEx2> {
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
    final codeRegex = RegExp(
      r'^var\s+number\s*=\s*5;\s*number\s*=\s*number\s*\+\s*\d+;$',
      multiLine: true,
    );

    final userInput = _controller.text.trim();

    if (codeRegex.hasMatch(userInput)) {
      try {
        PurchaseManagerSingleton().updateItemAndSave(
          widget.id,
          completed: true,
        );
        await SharedPreferencesData.guardarPurchasesAndDevelopmentList(
          PurchaseManagerSingleton().purchaseAndDevelop,
        );
        allprovider.data[widget.id].completed = true;
        allprovider.setData(allprovider.data);
        int nC = allprovider.completedCount + 1;
        allprovider.setCourseCount(nC);
      } catch (e) {
        debugPrint(e.toString());
      }
      setState(() {
        _inputTextColor = Colors.green;
      });
      _controller.clear();

      _showDialog(
        AppLocalizations.of(context)!.correctTitle,
        AppLocalizations.of(context)!.exercise2CorrectContent,
        titleColor: Colors.green,
      );
    } else {
      setState(() {
        _failedAttempts++;
        _inputTextColor = Colors.orange;
      });

      if (_failedAttempts == 1) {
        _showDialog(
          AppLocalizations.of(context)!.hint1Title,
          AppLocalizations.of(context)!.exercise2Hint1Content,
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          AppLocalizations.of(context)!.hint2Title,
          AppLocalizations.of(context)!.exercise2Hint2Content,
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          AppLocalizations.of(context)!.solutionTitle,
          AppLocalizations.of(context)!.exercise2SolutionContent,
          titleColor: Colors.red,
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content:
                Text(AppLocalizations.of(context)!.tryAgain(_failedAttempts)),
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
              heroTag: "introButton2",
              onPressed: () {
                _showDialog(
                  AppLocalizations.of(context)!.exerciseInstructionsTitle,
                  AppLocalizations.of(context)!.exercise2InstructionsContent,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButton2",
              onPressed: () {
                _validateInput(allProvider);
              },
              backgroundColor: Colors.black,
              child: const Icon(Icons.play_arrow, color: Colors.white),
            ),
          ),
          if (_failedAttempts >= 3 || widget.completed )
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                heroTag: "helpButton2",
                onPressed: () {
                  _showDialog(
                    AppLocalizations.of(context)!.solutionTitle,
                    AppLocalizations.of(context)!.exercise2SolutionContent,
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
                        text: "number ",
                        style: TextStyle(color: Colors.green),
                      ),
                      TextSpan(
                        text: "= 5;\n2  number = number + 10;",
                        style: const TextStyle(color: Colors.orange),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: _controller,
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  style: TextStyle(
                    fontFamily: 'InconsolataRegular',
                    fontSize: 18,
                    color: _inputTextColor,
                  ),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 8),
                    hintText: AppLocalizations.of(context)!.enterYourCodeHere,
                    hintStyle: const TextStyle(color: Colors.grey),
                    border: InputBorder.none,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
