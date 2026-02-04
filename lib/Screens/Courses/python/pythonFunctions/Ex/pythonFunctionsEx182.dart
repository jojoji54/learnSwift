import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

import '../../../../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';

class PythonFunctionsEx182 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;

  const PythonFunctionsEx182({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<PythonFunctionsEx182> createState() => _PythonFunctionsEx182State();
}

class _PythonFunctionsEx182State extends State<PythonFunctionsEx182> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.grey;

  /// ✅ Requisitos 182:
  /// 1) def fn(param):
  /// 2) dentro: return <algo>, <algo>  (coma => 2 retornos)
  /// 3) después: print(fn(...))
  bool _isValid182(String code) {
    final normalized = code.trimRight();

    // 1) def fn(param):
    final defRegex = RegExp(
      r'^\s*def\s+([A-Za-z_]\w*)\s*\(\s*([A-Za-z_]\w*)\s*\)\s*:\s*$',
      multiLine: true,
    );
    final defMatch = defRegex.firstMatch(normalized);
    if (defMatch == null) return false;

    final fnName = defMatch.group(1) ?? '';
    final param = defMatch.group(2) ?? '';
    if (fnName.isEmpty || param.isEmpty) return false;

    // 2) return indentado con coma (tuple-like)
    final returnTupleRegex = RegExp(
      r'^(?:\s{2,}|\t+)return\s+(.+?)\s*,\s*(.+?)\s*$',
      multiLine: true,
    );
    final returnMatch = returnTupleRegex.firstMatch(normalized);
    if (returnMatch == null) return false;

    final leftExpr = (returnMatch.group(1) ?? '').trim();
    final rightExpr = (returnMatch.group(2) ?? '').trim();
    if (leftExpr.isEmpty || rightExpr.isEmpty) return false;

    // Aseguramos que se use el parámetro en algún lado del return
    final usesParam = RegExp(r'\b' + RegExp.escape(param) + r'\b').hasMatch(
      '${returnMatch.group(0)}',
    );
    if (!usesParam) return false;

    // 3) print(fn(...)) después del def
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
    final ok = _isValid182(userInput);
    setState(() => _inputTextColor = ok ? Colors.green : Colors.red);
  }

  void _submit(AllProvider allprovider) {
    final userInput = _controller.text;
    final loc = AppLocalizations.of(context)!;

    if (_isValid182(userInput)) {
      purchaseManagerHive.updatePurchase(
        widget.id,
        purchased: true,
        completed: true,
      );

      final idx = allprovider.data[Constant.catIndex].catExercise
          .indexWhere((e) => e.id == widget.id);
      if (idx != -1) {
        allprovider.data[Constant.catIndex].catExercise[idx].completed = true;
      }
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
        _showDialog(loc.python182HintTitle1, loc.python182HintContent1);
      } else if (_failedAttempts == 2) {
        _showDialog(loc.python182HintTitle2, loc.python182HintContent2);
      } else {
        _showDialog(
          loc.python182SolutionTitle,
          loc.python182SolutionContent,
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
      loc.python182ExampleCode1,
      loc.python182ExampleCode2,
      loc.python182ExampleCode3,
      loc.python182ExampleCode4,
    ];

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButtonPythonFunctions182",
              onPressed: () {
                _showDialog(
                  loc.python182InstructionsTitle,
                  loc.python182InstructionsContent,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "infoButtonpython182",
              onPressed: () {
                _showDialog(
                  loc.python182InfoTitle,
                  loc.python182InfoContent,
                );
              },
              backgroundColor: const Color(0xFF90CAF9),
              child: const Icon(Icons.info_outline, color: Colors.white),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonPythonFunctions182",
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
                  loc.python182ExampleTitle,
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
                  loc.python182ExampleOutput,
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
                    hintText: loc.python182EnterCodeHint,
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
