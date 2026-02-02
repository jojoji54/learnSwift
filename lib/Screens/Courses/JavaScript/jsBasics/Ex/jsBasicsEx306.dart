import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

// Igual que en tus ejercicios: lo usamos para acceder a purchaseManagerHive
import '../../../../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';

class JsBasicsEx306 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;

  const JsBasicsEx306({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<JsBasicsEx306> createState() => _JsBasicsEx306State();
}

class _JsBasicsEx306State extends State<JsBasicsEx306> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.grey;

  /// ✅ Requisitos 306:
  /// 1) Declarar un boolean: let/const x = true/false;
  /// 2) Usar !x (negación) o declarar otra variable = !x
  /// 3) Hacer console.log(...) usando el boolean original y el negado
  bool _isValid306(String code) {
    final normalized = code.trim();

    // 1) let/const flag = true/false
    final boolDeclRegex = RegExp(
      r'\b(?:let|const)\s+([A-Za-z_$][\w$]*)\s*=\s*(true|false)\s*;?',
      multiLine: true,
    );

    final boolMatch = boolDeclRegex.firstMatch(normalized);
    if (boolMatch == null) return false;

    final boolVar = (boolMatch.group(1) ?? '').trim();
    if (boolVar.isEmpty) return false;

    // 2) Negación: !boolVar o const other = !boolVar
    final negVarDeclRegex = RegExp(
      r'\b(?:let|const)\s+([A-Za-z_$][\w$]*)\s*=\s*!\s*' +
          RegExp.escape(boolVar) +
          r'\b\s*;?',
      multiLine: true,
    );

    final negVarMatch = negVarDeclRegex.firstMatch(normalized);
    final negVarName = (negVarMatch?.group(1) ?? '').trim();

    final inlineNegRegex = RegExp(
      r'!\s*' + RegExp.escape(boolVar) + r'\b',
      multiLine: true,
    );

    final hasNegation = negVarMatch != null || inlineNegRegex.hasMatch(normalized);
    if (!hasNegation) return false;

    // 3) console.log(...) debe usar boolVar y también el negado (negVarName o !boolVar)
    final logRegex = RegExp(
      r'''console\.log\s*\(\s*([\s\S]*?)\s*\)\s*;?''',
      multiLine: true,
      dotAll: true,
    );

    bool usesOriginal = false;
    bool usesNegated = false;

    for (final m in logRegex.allMatches(normalized)) {
      final inside = m.group(1) ?? '';

      if (RegExp(r'\b' + RegExp.escape(boolVar) + r'\b').hasMatch(inside)) {
        usesOriginal = true;
      }

      if (negVarName.isNotEmpty) {
        if (RegExp(r'\b' + RegExp.escape(negVarName) + r'\b').hasMatch(inside)) {
          usesNegated = true;
        }
      }

      if (inlineNegRegex.hasMatch(inside)) {
        usesNegated = true;
      }

      // Si ya cumple, no hace falta seguir
      if (usesOriginal && usesNegated) break;
    }

    if (!usesOriginal || !usesNegated) return false;

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
    final ok = _isValid306(userInput);
    setState(() => _inputTextColor = ok ? Colors.green : Colors.red);
  }

  void _submit(AllProvider allprovider) {
    final userInput = _controller.text;
    final loc = AppLocalizations.of(context)!;

    if (_isValid306(userInput)) {
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
        _showDialog(loc.js306HintTitle1, loc.js306HintContent1);
      } else if (_failedAttempts == 2) {
        _showDialog(loc.js306HintTitle2, loc.js306HintContent2);
      } else {
        _showDialog(
          loc.js306SolutionTitle,
          loc.js306SolutionContent,
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
      loc.js306ExampleCode1,
      loc.js306ExampleCode2,
      loc.js306ExampleCode3,
      loc.js306ExampleCode4,
    ];

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButtonJsBasics306",
              onPressed: () {
                _showDialog(
                  loc.js306InstructionsTitle,
                  loc.js306InstructionsContent,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonJsBasics306",
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
                  loc.js306ExampleTitle,
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
                  loc.js306ExampleOutput,
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
                    hintText: loc.js306EnterCodeHint,
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
