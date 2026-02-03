import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

// Igual que en tus ejercicios: lo usamos para acceder a purchaseManagerHive
import '../../../../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';

class JsBasicsEx308 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;

  const JsBasicsEx308({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<JsBasicsEx308> createState() => _JsBasicsEx308State();
}

class _JsBasicsEx308State extends State<JsBasicsEx308> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.grey;

  bool _isNumericExpr(String s) {
    final t = s.trim();
    if (t.isEmpty) return false;
    if (!RegExp(r'^[\d\s+\-*/%().]+$').hasMatch(t)) return false;
    if (!RegExp(r'\d').hasMatch(t)) return false;
    return true;
  }

  /// ✅ Requisitos 308:
  /// 1) let/const x = número
  /// 2) if (...) usando x y un operador de comparación
  /// 3) console.log(...) dentro del if (con bloque o en una línea)
  bool _isValid308(String code) {
    final normalized = code.trim();

    // 1) Buscar una variable numérica
    final varRegex = RegExp(
      r'\b(?:let|const)\s+([A-Za-z_$][\w$]*)\s*=\s*([^;\n]+)\s*;?',
      multiLine: true,
    );

    String? varName;
    for (final m in varRegex.allMatches(normalized)) {
      final name = (m.group(1) ?? '').trim();
      final value = (m.group(2) ?? '').trim();
      if (name.isEmpty) continue;
      if (_isNumericExpr(value)) {
        varName = name;
        break;
      }
    }
    if (varName == null) return false;

    // 2+3) Buscar if (...) { ... } o if (...) statement;
    // Capturamos condición y cuerpo.
    final ifRegex = RegExp(
      r'''if\s*\(\s*([^\)]*?)\s*\)\s*(\{[\s\S]*?\}|[^\n;]+;?)''',
      multiLine: true,
      dotAll: true,
    );

    final comparisonOpRegex = RegExp(r'(===|!==|>=|<=|>|<)');
    final varInConditionRegex =
        RegExp(r'\b' + RegExp.escape(varName) + r'\b');

    for (final m in ifRegex.allMatches(normalized)) {
      final condition = (m.group(1) ?? '').trim();
      final body = (m.group(2) ?? '').trim();

      // La condición debe usar la variable y tener un operador de comparación
      if (!varInConditionRegex.hasMatch(condition)) continue;
      if (!comparisonOpRegex.hasMatch(condition)) continue;

      // El cuerpo del if debe contener console.log(...)
      if (RegExp(r'console\.log\s*\(', multiLine: true).hasMatch(body)) {
        return true;
      }
    }

    return false;
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
    final ok = _isValid308(userInput);
    setState(() => _inputTextColor = ok ? Colors.green : Colors.red);
  }

  void _submit(AllProvider allprovider) {
    final userInput = _controller.text;
    final loc = AppLocalizations.of(context)!;

    if (_isValid308(userInput)) {
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
        _showDialog(loc.js308HintTitle1, loc.js308HintContent1);
      } else if (_failedAttempts == 2) {
        _showDialog(loc.js308HintTitle2, loc.js308HintContent2);
      } else {
        _showDialog(
          loc.js308SolutionTitle,
          loc.js308SolutionContent,
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
      loc.js308ExampleCode1,
      loc.js308ExampleCode2,
      loc.js308ExampleCode3,
      loc.js308ExampleCode4,
    ];

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButtonJsBasics308",
              onPressed: () {
                _showDialog(
                  loc.js308InstructionsTitle,
                  loc.js308InstructionsContent,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "infoButtonjs308",
              onPressed: () {
                _showDialog(
                  loc.js308InfoTitle,
                  loc.js308InfoContent,
                );
              },
              backgroundColor: const Color(0xFF90CAF9),
              child: const Icon(Icons.info_outline, color: Colors.white),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonJsBasics308",
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
                  loc.js308ExampleTitle,
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
                  loc.js308ExampleOutput,
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
                    hintText: loc.js308EnterCodeHint,
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
