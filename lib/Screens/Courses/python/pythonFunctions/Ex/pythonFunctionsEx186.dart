import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

import '../../../../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';

class PythonFunctionsEx186 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;

  const PythonFunctionsEx186({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<PythonFunctionsEx186> createState() => _PythonFunctionsEx186State();
}

class _PythonFunctionsEx186State extends State<PythonFunctionsEx186> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.grey;

  /// ✅ Requisitos 186 (*args + **kwargs):
  /// 1) def fn(*a, **k):
  /// 2) dentro: print(a) y print(k) (no hace falta que sea exacto, pero que aparezcan)
  /// 3) llamada: fn(x, y, z, key=value, key2=value2) (al menos 1 arg normal y 2 kwargs)
  bool _isValid186(String code) {
    final normalized = code.trimRight();

    // 1) def fn(*a, **k):
    final defRegex = RegExp(
      r'^\s*def\s+([A-Za-z_]\w*)\s*'
      r'\(\s*\*\s*([A-Za-z_]\w*)\s*,\s*\*\*\s*([A-Za-z_]\w*)\s*\)\s*:\s*$',
      multiLine: true,
    );
    final defMatch = defRegex.firstMatch(normalized);
    if (defMatch == null) return false;

    final fnName = defMatch.group(1) ?? '';
    final argsName = defMatch.group(2) ?? '';
    final kwName = defMatch.group(3) ?? '';
    if (fnName.isEmpty || argsName.isEmpty || kwName.isEmpty) return false;

    // 2) prints indentados usando argsName y kwName
    final printArgsRegex = RegExp(
      r'^(?:\s{2,}|\t+)print\s*\(\s*' + RegExp.escape(argsName) + r'\s*\)\s*$',
      multiLine: true,
    );
    final printKwRegex = RegExp(
      r'^(?:\s{2,}|\t+)print\s*\(\s*' + RegExp.escape(kwName) + r'\s*\)\s*$',
      multiLine: true,
    );

    if (!printArgsRegex.hasMatch(normalized)) return false;
    if (!printKwRegex.hasMatch(normalized)) return false;

    // 3) llamada a la función después del def
    final afterDef = normalized.substring(defMatch.end);

    final callRegex = RegExp(
      r'\b' + RegExp.escape(fnName) + r'\s*\(\s*([\s\S]*?)\s*\)',
      multiLine: true,
      dotAll: true,
    );
    final callMatch = callRegex.firstMatch(afterDef);
    if (callMatch == null) return false;

    final insideCall = (callMatch.group(1) ?? '').trim();
    if (insideCall.isEmpty) return false;

    // Debe haber al menos 1 argumento "normal" (algo antes de un "=")
    // y al menos 2 kwargs (algo=algo).
    final kwArgRegex = RegExp(r'\b[A-Za-z_]\w*\s*=');
    final kwCount = kwArgRegex.allMatches(insideCall).length;
    if (kwCount < 2) return false;

    // "Tiene algún argumento normal": buscamos algún token que no sea parte de un kwarg.
    // Aproximación: si empieza con algo que no contiene "=" o tiene ", <token sin =>"
    final hasPositional = RegExp(r'(^|,)\s*[^=,\n]+(\s*,|\s*$)').hasMatch(
      insideCall.replaceAll(kwArgRegex, 'KW='),
    );
    if (!hasPositional) return false;

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
    final ok = _isValid186(userInput);
    setState(() => _inputTextColor = ok ? Colors.green : Colors.red);
  }

  void _submit(AllProvider allprovider) {
    final userInput = _controller.text;
    final loc = AppLocalizations.of(context)!;

    if (_isValid186(userInput)) {
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
        _showDialog(loc.python186HintTitle1, loc.python186HintContent1);
      } else if (_failedAttempts == 2) {
        _showDialog(loc.python186HintTitle2, loc.python186HintContent2);
      } else {
        _showDialog(
          loc.python186SolutionTitle,
          loc.python186SolutionContent,
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
      loc.python186ExampleCode1,
      loc.python186ExampleCode2,
      loc.python186ExampleCode3,
      loc.python186ExampleCode4,
      loc.python186ExampleCode5,
      loc.python186ExampleCode6,
    ];

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButtonPythonFunctions186",
              onPressed: () {
                _showDialog(
                  loc.python186InstructionsTitle,
                  loc.python186InstructionsContent,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonPythonFunctions186",
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
                  loc.python186ExampleTitle,
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
                  loc.python186ExampleOutput,
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
                    hintText: loc.python186EnterCodeHint,
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
