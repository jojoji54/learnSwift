import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

// Igual que en tus ejercicios: lo usamos para acceder a purchaseManagerHive
import '../../../../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';

class JsBasicsEx304 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;

  const JsBasicsEx304({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<JsBasicsEx304> createState() => _JsBasicsEx304State();
}

class _JsBasicsEx304State extends State<JsBasicsEx304> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.grey;

  bool _isStringLiteral(String s) {
    final t = s.trim();
    // "..." o '...' o `...`
    return RegExp(r'''^([`"'])([\s\S]*?)\1$''', dotAll: true).hasMatch(t);
  }

  /// ✅ Requisitos 304:
  /// 1) Crear una variable/const con un string literal
  /// 2) Usar .length
  /// 3) Hacer console.log(...) imprimiendo algo que incluya esa longitud
  bool _isValid304(String code) {
    final normalized = code.trim();

    // 1) let/const name = "..."
    final stringVarRegex = RegExp(
      r'''\b(?:let|const)\s+([A-Za-z_$][\w$]*)\s*=\s*([^;\n]+)\s*;?''',
      multiLine: true,
    );

    String? varName;
    for (final m in stringVarRegex.allMatches(normalized)) {
      final name = (m.group(1) ?? '').trim();
      final value = (m.group(2) ?? '').trim();
      if (name.isEmpty) continue;
      if (_isStringLiteral(value)) {
        varName = name;
        break;
      }
    }
    if (varName == null) return false;

    // 2) Debe aparecer varName.length en el código
    final lengthUseRegex =
        RegExp(r'\b' + RegExp.escape(varName) + r'\s*\.\s*length\b');
    if (!lengthUseRegex.hasMatch(normalized)) return false;

    // 3) Debe haber un console.log(...) que incluya varName.length
    final logRegex = RegExp(
      r'''console\.log\s*\(\s*([\s\S]*?)\s*\)\s*;?''',
      multiLine: true,
      dotAll: true,
    );

    bool logUsesLength = false;
    for (final m in logRegex.allMatches(normalized)) {
      final inside = m.group(1) ?? '';
      if (lengthUseRegex.hasMatch(inside)) {
        logUsesLength = true;
        break;
      }
    }
    if (!logUsesLength) return false;

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
    final ok = _isValid304(userInput);
    setState(() => _inputTextColor = ok ? Colors.green : Colors.red);
  }

  void _submit(AllProvider allprovider) {
    final userInput = _controller.text;
    final loc = AppLocalizations.of(context)!;

    if (_isValid304(userInput)) {
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
        loc.jsCorrectTitle,
        loc.jsCorrectExplanation,
        titleColor: Colors.green,
      );
    } else {
      setState(() {
        _failedAttempts++;
        _inputTextColor = Colors.red;
      });

      if (_failedAttempts == 1) {
        _showDialog(loc.js304HintTitle1, loc.js304HintContent1);
      } else if (_failedAttempts == 2) {
        _showDialog(loc.js304HintTitle2, loc.js304HintContent2);
      } else {
        _showDialog(
          loc.js304SolutionTitle,
          loc.js304SolutionContent,
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
      loc.js304ExampleCode1,
      loc.js304ExampleCode2,
      loc.js304ExampleCode3,
      loc.js304ExampleCode4,
    ];

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButtonJsBasics304",
              onPressed: () {
                _showDialog(
                  loc.js304InstructionsTitle,
                  loc.js304InstructionsContent,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "infoButtonjs304",
              onPressed: () {
                _showDialog(
                  loc.js304InfoTitle,
                  loc.js304InfoContent,
                );
              },
              backgroundColor: const Color(0xFF90CAF9),
              child: const Icon(Icons.info_outline, color: Colors.white),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonJsBasics304",
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
                  loc.js304ExampleTitle,
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
                  language: CodeLanguage.javascript,
                ),

                const SizedBox(height: 10),
                Text(
                  loc.js304ExampleOutput,
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
                    hintText: loc.js304EnterCodeHint,
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
