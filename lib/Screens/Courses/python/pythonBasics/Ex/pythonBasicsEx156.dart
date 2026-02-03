import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

import '../../../../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';

class PythonBasicsEx156 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;

  const PythonBasicsEx156({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<PythonBasicsEx156> createState() => _PythonBasicsEx156State();
}

class _PythonBasicsEx156State extends State<PythonBasicsEx156> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.grey;

  // Requisito del Challenge 2:
  // 1) var1 = input(...)
  // 2) var2 = input(...)
  // 3) if ... (and/or) ... :  (usando var1 y var2)
  // 4) print(...) en el código
final RegExp _codeRegex = RegExp(
  r'([A-Za-z_]\w*)\s*=\s*input\s*\(.*?\)\s*.*?([A-Za-z_]\w*)\s*=\s*input\s*\(.*?\)\s*.*?^\s*if\s+.*(?:\b\1\b.*\b(?:and|or)\b.*\b\2\b|\b\2\b.*\b(?:and|or)\b.*\b\1\b).*\s*:\s*.*\bprint\s*\(',
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
    if (_codeRegex.hasMatch(userInput.trim())) {
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
          loc.python156HintTitle1,
          loc.python156HintContent1,
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          loc.python156HintTitle2,
          loc.python156HintContent2,
        );
      } else {
        _showDialog(
          loc.python156SolutionTitle,
          loc.python156SolutionContent,
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
              heroTag: "introButtonPythonBasics156",
              onPressed: () {
                _showDialog(
                  loc.python156InstructionsTitle,
                  loc.python156InstructionsContent,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "infoButtonpython156",
              onPressed: () {
                _showDialog(
                  loc.python156InfoTitle,
                  loc.python156InfoContent,
                );
              },
              backgroundColor: const Color(0xFF90CAF9),
              child: const Icon(Icons.info_outline, color: Colors.white),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonPythonBasics156",
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
                        text: "${loc.python156ExampleTitle}\n",
                        style: const TextStyle(color: Colors.grey),
                      ),
                      const TextSpan(text: ">>> ", style: TextStyle(color: Colors.blue)),
                      TextSpan(
                        text: loc.python156ExampleCode1,
                        style: const TextStyle(color: Colors.green),
                      ),
                      const TextSpan(text: ">>> ", style: TextStyle(color: Colors.blue)),
                      TextSpan(
                        text: loc.python156ExampleCode2,
                        style: const TextStyle(color: Colors.green),
                      ),
                      const TextSpan(text: ">>> ", style: TextStyle(color: Colors.blue)),
                      TextSpan(
                        text: loc.python156ExampleCode3,
                        style: const TextStyle(color: Colors.green),
                      ),
                      TextSpan(
                        text: "\n${loc.python156ExampleOutput}",
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
                    hintText: loc.python156EnterCodeHint,
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
