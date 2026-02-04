import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

import '../../../../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';

class PythonFunctionsEx179 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;

  const PythonFunctionsEx179({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<PythonFunctionsEx179> createState() => _PythonFunctionsEx179State();
}

class _PythonFunctionsEx179State extends State<PythonFunctionsEx179> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.grey;

  /// ✅ Requisitos 179:
  /// 1) def <fn>(param):
  /// 2) dentro: print(...) y debe incluir el param (por nombre)
  /// 3) después: llamada <fn>("...") o <fn>('...') o <fn(variable)
  bool _isValid179(String code) {
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

    // 2) print indentado dentro del bloque
    final printIndentedRegex = RegExp(
      r'^(?:\s{2,}|\t+)print\s*\(([\s\S]*?)\)\s*$',
      multiLine: true,
    );
    final printMatch = printIndentedRegex.firstMatch(normalized);
    if (printMatch == null) return false;

    // El contenido del print debe incluir el param (como token)
    final printInside = printMatch.group(1) ?? '';
    final usesParamRegex =
        RegExp(r'\b' + RegExp.escape(param) + r'\b', multiLine: true);
    if (!usesParamRegex.hasMatch(printInside)) return false;

    // 3) llamada a la función después del def
    final afterDef = normalized.substring(defMatch.end);
    final callRegex = RegExp(
      r'\b' + RegExp.escape(fnName) + r'\s*\(\s*.+\s*\)',
      multiLine: true,
      dotAll: true,
    );
    if (!callRegex.hasMatch(afterDef)) return false;

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
    final ok = _isValid179(userInput);
    setState(() => _inputTextColor = ok ? Colors.green : Colors.red);
  }

  void _submit(AllProvider allprovider) {
    final userInput = _controller.text;
    final loc = AppLocalizations.of(context)!;

    if (_isValid179(userInput)) {
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
        _showDialog(loc.python179HintTitle1, loc.python179HintContent1);
      } else if (_failedAttempts == 2) {
        _showDialog(loc.python179HintTitle2, loc.python179HintContent2);
      } else {
        _showDialog(
          loc.python179SolutionTitle,
          loc.python179SolutionContent,
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
      loc.python179ExampleCode1,
      loc.python179ExampleCode2,
      loc.python179ExampleCode3,
      loc.python179ExampleCode4,
    ];

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButtonPythonFunctions179",
              onPressed: () {
                _showDialog(
                  loc.python179InstructionsTitle,
                  loc.python179InstructionsContent,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "infoButtonpython179",
              onPressed: () {
                _showDialog(
                  loc.python179InfoTitle,
                  loc.python179InfoContent,
                );
              },
              backgroundColor: const Color(0xFF90CAF9),
              child: const Icon(Icons.info_outline, color: Colors.white),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonPythonFunctions179",
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
                  loc.python179ExampleTitle,
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
                  loc.python179ExampleOutput,
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
                    hintText: loc.python179EnterCodeHint,
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
