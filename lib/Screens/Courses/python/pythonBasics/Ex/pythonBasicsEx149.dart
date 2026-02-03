import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

import '../../../../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';

class PythonBasicsEx149 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;

  const PythonBasicsEx149({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<PythonBasicsEx149> createState() => _PythonBasicsEx149State();
}

class _PythonBasicsEx149State extends State<PythonBasicsEx149> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.grey;

  // Acepta:
  // - print("text".upper()) / print("text".lower())
  // - text = "..." + print(text.upper()) / print(text.lower())
  //
  // Requisitos mínimos:
  // 1) Debe aparecer alguna cadena (comillas simples o dobles)
  // 2) Debe haber un print(...) que use .upper() o .lower()
final RegExp _codeRegex = RegExp(
  '(?=.*[\'"][^\'"]+[\'"])(?=.*\\bprint\\s*\\(\\s*(?:\\w+|[\'"][^\'"]+[\'"])\\s*\\.\\s*(?:upper|lower)\\s*\\(\\s*\\)\\s*\\))',
  multiLine: true,
  dotAll: true,
);


  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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

  void _validateInput(String userInput) {
    if (_codeRegex.hasMatch(userInput)) {
      setState(() => _inputTextColor = Colors.green);
    } else {
      setState(() => _inputTextColor = Colors.red);
    }
  }

  void _submit(AllProvider allprovider) {
    final userInput = _controller.text.trim();
    final loc = AppLocalizations.of(context)!;

    if (_codeRegex.hasMatch(userInput)) {
      purchaseManagerHive.updatePurchase(
        widget.id,
        purchased: true,
        completed: true,
      );

      allprovider.data[Constant.catIndex]
          .catExercise[widget.id]
          .completed = true;

      allprovider.setData(allprovider.data);
      _controller.clear();

      _showDialog(
        loc.pythonCorrectTitle,
        loc.pythonCorrectExplanation,
        titleColor: Colors.green,
      );
    } else {
      setState(() {
        _failedAttempts++;
        _inputTextColor = Colors.red;
      });

      if (_failedAttempts == 1) {
        _showDialog(
          loc.python149HintTitle1,
          loc.python149HintContent1,
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          loc.python149HintTitle2,
          loc.python149HintContent2,
        );
      } else {
        _showDialog(
          loc.python149SolutionTitle,
          loc.python149SolutionContent,
          titleColor: Colors.red,
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final allProvider = Provider.of<AllProvider>(context);
    final loc = AppLocalizations.of(context)!;

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButtonPythonBasics149",
              onPressed: () {
                _showDialog(
                  loc.python149InstructionsTitle,
                  loc.python149InstructionsContent,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "infoButtonpython149",
              onPressed: () {
                _showDialog(
                  loc.python149InfoTitle,
                  loc.python149InfoContent,
                );
              },
              backgroundColor: const Color(0xFF90CAF9),
              child: const Icon(Icons.info_outline, color: Colors.white),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonPythonBasics149",
              onPressed: () => _submit(allProvider),
              backgroundColor: Colors.black,
              child: const Icon(Icons.play_arrow, color: Colors.white),
            ),
          ),
        ],
      ),
      body: FadeIn(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1000),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      fontFamily: 'Consolas',
                      fontSize: 18,
                    ),
                    children: [
                      TextSpan(
                        text: "${loc.python149ExampleTitle}\n",
                        style: const TextStyle(color: Colors.grey),
                      ),
                      const TextSpan(
                        text: ">>> ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: 'print("hello".upper())\n',
                        style: TextStyle(color: Colors.green),
                      ),
                      TextSpan(
                        text: loc.python149ExampleOutput,
                        style: const TextStyle(color: Colors.grey),
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
                    fontFamily: 'Consolas',
                    fontSize: 18,
                    color: _inputTextColor,
                  ),
                  onChanged: _validateInput,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 8),
                    hintText: loc.python149EnterCodeHint,
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
