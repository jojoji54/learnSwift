import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/data/courses/Swift/swiftBasics/sbExModelListZH.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

class PythonBasicsEx148 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;
  const PythonBasicsEx148({super.key, required this.title, required this.id, required this.completed});

  @override
  State<PythonBasicsEx148> createState() => _PythonBasicsEx148State();
}

class _PythonBasicsEx148State extends State<PythonBasicsEx148> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.grey;

  final RegExp _codeRegex = RegExp(
    r"^\s*[a-zA-Z_][a-zA-Z0-9_]*\s*=\s*\d+\s*\n\s*[a-zA-Z_][a-zA-Z0-9_]*\s*=\s*\d+\s*\n\s*print\s*\(\s*[a-zA-Z_][a-zA-Z0-9_]*\s*[+\-*/]\s*[a-zA-Z_][a-zA-Z0-9_]*\s*\)\s*$",
    multiLine: true,
  );

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

  void _validateInput(String userInput, AllProvider allProvider) {
    if (_codeRegex.hasMatch(userInput)) {
      setState(() {
        _inputTextColor = Colors.green;
      });
    } else {
      setState(() {
        _inputTextColor = Colors.red;
      });
    }
  }

  void _submit(AllProvider allProvider) {
    final userInput = _controller.text.trim();

    if (_codeRegex.hasMatch(userInput)) {
      purchaseManagerHive.updatePurchase(widget.id,
          purchased: true, completed: true);
      allProvider.data[Constant.catIndex].catExercise[widget.id].completed = true;
      allProvider.setData(allProvider.data);
      _controller.clear();

      _showDialog(
        AppLocalizations.of(context)!.pythonCorrectTitle2,
        AppLocalizations.of(context)!.pythonCorrectExplanation2,
        titleColor: Colors.green,
      );
    } else {
      setState(() {
        _failedAttempts++;
        _inputTextColor = Colors.red;
      });

      if (_failedAttempts == 1) {
        _showDialog(
          AppLocalizations.of(context)!.pythonHintTitle5,
          AppLocalizations.of(context)!.pythonHintContent5,
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          AppLocalizations.of(context)!.pythonHintTitle6,
          AppLocalizations.of(context)!.pythonHintContent6,
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          AppLocalizations.of(context)!.pythonSolutionTitle,
          AppLocalizations.of(context)!.pythonSolutionContent3,
          titleColor: Colors.red,
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
              heroTag: "introButtonPythonBasics2",
              onPressed: () {
                _showDialog(
                  AppLocalizations.of(context)!.pythonInstructionsTitle3,
                  AppLocalizations.of(context)!.pythonInstructionsContent3,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "infoButtonpython",
              onPressed: () {
                _showDialog(
                  AppLocalizations.of(context)!.pythonInfoTitle,
                  AppLocalizations.of(context)!.pythonInfoContent,
                );
              },
              backgroundColor: const Color(0xFF90CAF9),
              child: const Icon(Icons.info_outline, color: Colors.white),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonPythonBasics2",
              onPressed: () {
                _submit(allProvider);
              },
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
            constraints: const BoxConstraints(
              maxWidth: 1000,
            ),
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
                        text: "${AppLocalizations.of(context)!.pythonExampleTitle3}\n",
                        style: TextStyle(color: Colors.grey),
                      ),
                      const TextSpan(
                        text: ">>> ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      TextSpan(
                        text: 'a = 10\n>>> b = 20\n>>> print(a + b)\n',
                        style: TextStyle(color: Colors.green),
                      ),
                      TextSpan(
                        text: AppLocalizations.of(context)!.pythonExampleOutput3,
                        style: TextStyle(color: Colors.grey),
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
                  onChanged: (value) {
                    _validateInput(value, allProvider);
                  },
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 8),
                    hintText: AppLocalizations.of(context)!.pythonEnterCodeHint3,
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
