import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/Widgets/codeTheme.dart'; // ✅ tu archivo nuevo
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

import '../../../../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';

class PythonFunctionsEx177 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;

  const PythonFunctionsEx177({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<PythonFunctionsEx177> createState() => _PythonFunctionsEx177State();
}

class _PythonFunctionsEx177State extends State<PythonFunctionsEx177> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.grey;

  /// ✅ Requisitos 177:
  /// 1) def <name>():
  /// 2) dentro del bloque: print(...)
  /// 3) llamada a esa función DESPUÉS de la definición
  bool _isValid177(String code) {
    final normalized = code.trimRight();

    // 1) def <name>():
    final defRegex = RegExp(
      r'^\s*def\s+([A-Za-z_]\w*)\s*\(\s*\)\s*:\s*$',
      multiLine: true,
    );

    final defMatch = defRegex.firstMatch(normalized);
    if (defMatch == null) return false;

    final fnName = defMatch.group(1) ?? '';
    if (fnName.isEmpty) return false;

    // 2) print indentado dentro del bloque
    // Aceptamos 2+ espacios o tab. (Simplificado)
    final printIndentedRegex = RegExp(
      r'^(?:\s{2,}|\t+)print\s*\(',
      multiLine: true,
    );
    if (!printIndentedRegex.hasMatch(normalized)) return false;

    // 3) llamada a la función después del def
    final afterDef = normalized.substring(defMatch.end);
    final callRegex = RegExp(r'\b' + RegExp.escape(fnName) + r'\s*\(\s*\)');
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
    final ok = _isValid177(userInput);
    setState(() => _inputTextColor = ok ? Colors.green : Colors.red);
  }

  void _submit(AllProvider allprovider) {
    final userInput = _controller.text;
    final loc = AppLocalizations.of(context)!;

    if (_isValid177(userInput)) {
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
        _showDialog(loc.python177HintTitle1, loc.python177HintContent1);
      } else if (_failedAttempts == 2) {
        _showDialog(loc.python177HintTitle2, loc.python177HintContent2);
      } else {
        _showDialog(
          loc.python177SolutionTitle,
          loc.python177SolutionContent,
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
      loc.python177ExampleCode1,
      loc.python177ExampleCode2,
      loc.python177ExampleCode3,
    ];

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButtonPythonFunctions177",
              onPressed: () {
                _showDialog(
                  loc.python177InstructionsTitle,
                  loc.python177InstructionsContent,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "infoButtonpython177",
              onPressed: () {
                _showDialog(
                  loc.python177InfoTitle,
                  loc.python177InfoContent,
                );
              },
              backgroundColor: const Color(0xFF90CAF9),
              child: const Icon(Icons.info_outline, color: Colors.white),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonPythonFunctions177",
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
                // Título "Example"
                Text(
                  loc.python177ExampleTitle,
                  style: const TextStyle(
                    fontFamily: 'InconsolataRegular',
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 10),

                // ✅ Ejemplo con colores y números de línea
                CodePreview(
                  lines: exampleLines,
                  withLineNumbers: true,
                  withPrompt: false,
                ),

                const SizedBox(height: 10),

                Text(
                  loc.python177ExampleOutput,
                  style: const TextStyle(
                    fontFamily: 'InconsolataRegular',
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 18),

                // Input del usuario
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
                    hintText: loc.python177EnterCodeHint,
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
