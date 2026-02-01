import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

import '../../../../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';

class PythonControlFlowEx166 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;

  const PythonControlFlowEx166({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<PythonControlFlowEx166> createState() => _PythonControlFlowEx166State();
}

class _PythonControlFlowEx166State extends State<PythonControlFlowEx166> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.grey;

  // ✅ Validación por partes (robusta):
  // Requisitos:
  // - if ... :
  // - else:
  // - la línea del if debe contener and/or/not
  // - la condición debe tener alguna comparación (==, !=, >=, <=, >, <)
  // - al menos 2 prints
  bool _isValid166(String code) {
    final ifLineRegex = RegExp(r'^\s*if\s+.+\s*:\s*$', multiLine: true);
    final elseLineRegex = RegExp(r'^\s*else\s*:\s*$', multiLine: true);
    final printRegex = RegExp(r'\bprint\s*\(', multiLine: true);
    final comparisonRegex = RegExp(r'(==|!=|>=|<=|>|<)');
    final logicRegex = RegExp(r'\b(and|or|not)\b');

    if (!ifLineRegex.hasMatch(code)) return false;
    if (!elseLineRegex.hasMatch(code)) return false;

    // Extra: exigir and/or/not EN la línea del if
    final ifMatch = ifLineRegex.firstMatch(code);
    final ifLine = ifMatch?.group(0) ?? '';
    if (!logicRegex.hasMatch(ifLine)) return false;

    if (!comparisonRegex.hasMatch(code)) return false;

    final prints = printRegex.allMatches(code).length;
    if (prints < 2) return false;

    return true;
  }

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
    final ok = _isValid166(userInput.trim());
    setState(() => _inputTextColor = ok ? Colors.green : Colors.red);
  }

  void _submit(AllProvider allprovider) {
    final userInput = _controller.text.trim();
    final loc = AppLocalizations.of(context)!;

    if (_isValid166(userInput)) {
      purchaseManagerHive.updatePurchase(
        widget.id,
        purchased: true,
        completed: true,
      );

      allprovider.data[Constant.catIndex].catExercise[widget.id].completed =
          true;

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
          loc.python166HintTitle1,
          loc.python166HintContent1,
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          loc.python166HintTitle2,
          loc.python166HintContent2,
        );
      } else {
        _showDialog(
          loc.python166SolutionTitle,
          loc.python166SolutionContent,
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
              heroTag: "introButtonPythonControlFlow166",
              onPressed: () {
                _showDialog(
                  loc.python166InstructionsTitle,
                  loc.python166InstructionsContent,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonPythonControlFlow166",
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
                        text: "${loc.python166ExampleTitle}\n",
                        style: const TextStyle(color: Colors.grey),
                      ),
                      const TextSpan(
                        text: ">>> ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      TextSpan(
                        text: loc.python166ExampleCode1,
                        style: const TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: ">>> ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      TextSpan(
                        text: loc.python166ExampleCode2,
                        style: const TextStyle(color: Colors.green),
                      ),
                      TextSpan(
                        text: "\n${loc.python166ExampleOutput}",
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
                    hintText: loc.python166EnterCodeHint,
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
