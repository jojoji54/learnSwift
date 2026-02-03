import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

import '../../../../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';

class PythonFunctionsEx184 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;

  const PythonFunctionsEx184({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<PythonFunctionsEx184> createState() => _PythonFunctionsEx184State();
}

class _PythonFunctionsEx184State extends State<PythonFunctionsEx184> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.grey;

  /// ✅ Requisitos 184 (*args):
  /// 1) def fn(*param):
  /// 2) total = 0
  /// 3) for x in param:
  /// 4) total += x
  /// 5) return total
  /// 6) print(fn( ... , ... ))
  bool _isValid184(String code) {
    final normalized = code.trimRight();

    // 1) def fn(*param):
    final defArgsRegex = RegExp(
      r'^\s*def\s+([A-Za-z_]\w*)\s*\(\s*\*\s*([A-Za-z_]\w*)\s*\)\s*:\s*$',
      multiLine: true,
    );
    final defMatch = defArgsRegex.firstMatch(normalized);
    if (defMatch == null) return false;

    final fnName = defMatch.group(1) ?? '';
    final argsName = defMatch.group(2) ?? '';
    if (fnName.isEmpty || argsName.isEmpty) return false;

    // 2) total = 0 (indentado o no, pero normalmente dentro)
    final totalInitRegex = RegExp(r'^\s*(?:\s{2,}|\t+)?total\s*=\s*0\s*$',
        multiLine: true);
    if (!totalInitRegex.hasMatch(normalized)) return false;

    // 3) for x in argsName:
    final forRegex = RegExp(
      r'^\s*(?:\s{2,}|\t+)?for\s+([A-Za-z_]\w*)\s+in\s+' +
          RegExp.escape(argsName) +
          r'\s*:\s*$',
      multiLine: true,
    );
    final forMatch = forRegex.firstMatch(normalized);
    if (forMatch == null) return false;

    final loopVar = forMatch.group(1) ?? '';
    if (loopVar.isEmpty) return false;

    // 4) total += loopVar (indentado)
    final addRegex = RegExp(
      r'^(?:\s{2,}|\t+)total\s*\+=\s*' + RegExp.escape(loopVar) + r'\s*$',
      multiLine: true,
    );
    if (!addRegex.hasMatch(normalized)) return false;

    // 5) return total (indentado)
    final returnRegex = RegExp(
      r'^(?:\s{2,}|\t+)return\s+total\s*$',
      multiLine: true,
    );
    if (!returnRegex.hasMatch(normalized)) return false;

    // 6) print(fn(1,2,3)) despues del def
    final afterDef = normalized.substring(defMatch.end);
    final printCallRegex = RegExp(
      r'\bprint\s*\(\s*' +
          RegExp.escape(fnName) +
          r'\s*\(\s*.+\s*\)\s*\)',
      multiLine: true,
      dotAll: true,
    );
    if (!printCallRegex.hasMatch(afterDef)) return false;

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
    final ok = _isValid184(userInput);
    setState(() => _inputTextColor = ok ? Colors.green : Colors.red);
  }

  void _submit(AllProvider allprovider) {
    final userInput = _controller.text;
    final loc = AppLocalizations.of(context)!;

    if (_isValid184(userInput)) {
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
        _showDialog(loc.python184HintTitle1, loc.python184HintContent1);
      } else if (_failedAttempts == 2) {
        _showDialog(loc.python184HintTitle2, loc.python184HintContent2);
      } else {
        _showDialog(
          loc.python184SolutionTitle,
          loc.python184SolutionContent,
          titleColor: Colors.red,
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final allProvider = Provider.of<AllProvider>(context);
    final loc = AppLocalizations.of(context)!;

    final exampleLines = <String>[
      loc.python184ExampleCode1,
      loc.python184ExampleCode2,
      loc.python184ExampleCode3,
      loc.python184ExampleCode4,
      loc.python184ExampleCode5,
      loc.python184ExampleCode6,
      loc.python184ExampleCode7,
    ];

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButtonPythonFunctions184",
              onPressed: () {
                _showDialog(
                  loc.python184InstructionsTitle,
                  loc.python184InstructionsContent,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "infoButtonpython184",
              onPressed: () {
                _showDialog(
                  loc.python184InfoTitle,
                  loc.python184InfoContent,
                );
              },
              backgroundColor: const Color(0xFF90CAF9),
              child: const Icon(Icons.info_outline, color: Colors.white),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonPythonFunctions184",
              onPressed: () => _submit(allProvider),
              backgroundColor: Colors.black,
              child: const Icon(Icons.play_arrow, color: Colors.white),
            ),
          ),
        ],
      ),
      body: FadeIn(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1000),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  loc.python184ExampleTitle,
                  style: const TextStyle(
                    fontFamily: 'InconsolataRegular',
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 10),

                CodePreview(
                  lines: exampleLines,
                  withLineNumbers: true,
                ),

                const SizedBox(height: 10),

                Text(
                  loc.python184ExampleOutput,
                  style: const TextStyle(
                    fontFamily: 'InconsolataRegular',
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 18),

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
                    hintText: loc.python184EnterCodeHint,
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
