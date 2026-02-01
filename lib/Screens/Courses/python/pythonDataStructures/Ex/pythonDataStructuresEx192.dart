import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

import '../../../../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';

class PythonDataStructuresEx192 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;

  const PythonDataStructuresEx192({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<PythonDataStructuresEx192> createState() =>
      _PythonDataStructuresEx192State();
}

class _PythonDataStructuresEx192State extends State<PythonDataStructuresEx192> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.grey;

  /// ✅ Requisitos 192:
  /// 1) nums = [ ... ]
  /// 2) dict comprehension: var = { key: value for x in nums }
  /// 3) print(var) (imprime el diccionario creado)
  bool _isValid192(String code) {
    final c = code.trimRight();

    // 1) nums = [1, 2, 3, 4] (aprox: al menos 3-4 nums)
    final numsListRegex = RegExp(
      r'\bnums\s*=\s*\[\s*\d+\s*,\s*\d+\s*,\s*\d+(?:\s*,\s*\d+)*\s*\]',
      multiLine: true,
    );
    if (!numsListRegex.hasMatch(c)) return false;

    // 2) Capturamos varName en: varName = { ... : ... for ... in nums ... }
    final dictCompRegex = RegExp(
      r'\b([A-Za-z_]\w*)\s*=\s*\{\s*.+?\s*:\s*.+?\s+for\s+.+?\s+in\s+nums(?:\s+if\s+.+?)?\s*\}',
      multiLine: true,
      dotAll: true,
    );

    final match = dictCompRegex.firstMatch(c);
    if (match == null) return false;

    final varName = match.group(1) ?? '';
    if (varName.isEmpty) return false;

    // 3) print(varName)
    final printVarRegex = RegExp(
      r'\bprint\s*\(\s*.*\b' + RegExp.escape(varName) + r'\b.*\)',
      multiLine: true,
      dotAll: true,
    );
    if (!printVarRegex.hasMatch(c)) return false;

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
    final ok = _isValid192(userInput);
    setState(() => _inputTextColor = ok ? Colors.green : Colors.red);
  }

  void _submit(AllProvider allprovider) {
    final userInput = _controller.text;
    final loc = AppLocalizations.of(context)!;

    // 🔧 Construimos la línea con llaves en Dart para evitar ICU en ARB
    final dictLine =
        "${loc.python192ExampleCode2Prefix}{${loc.python192ExampleCode2Inner}}";

    if (_isValid192(userInput)) {
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
          loc.python192HintTitle1,
          "${loc.python192HintContent1Prefix}{${loc.python192ExampleCode2Inner}}",
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          loc.python192HintTitle2,
          loc.python192HintContent2,
        );
      } else {
        _showDialog(
          loc.python192SolutionTitle,
          "${loc.python192SolutionContentPrefix}{${loc.python192ExampleCode2Inner}}\n${loc.python192SolutionContentSuffix}",
          titleColor: Colors.red,
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final allProvider = Provider.of<AllProvider>(context);
    final loc = AppLocalizations.of(context)!;

    // 🔧 Construimos la línea con llaves en Dart para evitar ICU en ARB
    final dictLine =
        "${loc.python192ExampleCode2Prefix}{${loc.python192ExampleCode2Inner}}";

    final exampleLines = <String>[
      loc.python192ExampleCode1,
      dictLine,
      loc.python192ExampleCode3,
      loc.python192ExampleCode4,
    ].where((e) => e.trim().isNotEmpty).toList();

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButtonPythonDataStructures192",
              onPressed: () {
                _showDialog(
                  loc.python192InstructionsTitle,
                  loc.python192InstructionsContent,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonPythonDataStructures192",
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
                  loc.python192ExampleTitle,
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
                  loc.python192ExampleOutput,
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
                    hintText: loc.python192EnterCodeHint,
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
