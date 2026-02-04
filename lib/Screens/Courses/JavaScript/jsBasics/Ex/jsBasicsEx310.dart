import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

// Igual que en tus ejercicios: lo usamos para acceder a purchaseManagerHive
import '../../../../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';

class JsBasicsEx310 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;

  const JsBasicsEx310({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<JsBasicsEx310> createState() => _JsBasicsEx310State();
}

class _JsBasicsEx310State extends State<JsBasicsEx310> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.grey;

  bool _isNumericExpr(String s) {
    final t = s.trim();
    if (t.isEmpty) return false;
    if (t.contains('"') || t.contains("'") || t.contains('`')) return false;
    if (!RegExp(r'^[\d\s+\-*/%().]+$').hasMatch(t)) return false;
    if (!RegExp(r'\d').hasMatch(t)) return false;
    return true;
  }

  /// ✅ Requisitos 310 (Challenge 1):
  /// 1) Declarar una variable numérica (let/const)
  /// 2) Declarar una variable booleana (let/const = true/false)
  /// 3) Tener un if (...) else ...
  /// 4) La condición del if debe usar ambas variables y el operador &&
  /// 5) Debe haber console.log(...) en el if y también en el else
  bool _isValid310(String code) {
    final normalized = code.trim();

    // 1) Variable numérica
    final numDeclRegex = RegExp(
      r'\b(?:let|const)\s+([A-Za-z_$][\w$]*)\s*=\s*([^;\n]+)\s*;?',
      multiLine: true,
    );

    String? numVar;
    for (final m in numDeclRegex.allMatches(normalized)) {
      final name = (m.group(1) ?? '').trim();
      final value = (m.group(2) ?? '').trim();
      if (name.isEmpty) continue;
      if (_isNumericExpr(value)) {
        numVar = name;
        break;
      }
    }
    if (numVar == null) return false;

    // 2) Variable booleana
    final boolDeclRegex = RegExp(
      r'\b(?:let|const)\s+([A-Za-z_$][\w$]*)\s*=\s*(true|false)\s*;?',
      multiLine: true,
    );

    final boolMatch = boolDeclRegex.firstMatch(normalized);
    if (boolMatch == null) return false;

    final boolVar = (boolMatch.group(1) ?? '').trim();
    if (boolVar.isEmpty) return false;
    if (boolVar == numVar) return false;

    // 3) if (...) ... else ...
    // Acepta bloque o una sola sentencia
    final ifElseRegex = RegExp(
      r'''if\s*\(\s*([^\)]*?)\s*\)\s*(\{[\s\S]*?\}|[^\n;]+;?)\s*else\s*(\{[\s\S]*?\}|[^\n;]+;?)''',
      multiLine: true,
      dotAll: true,
    );

    final ifElseMatch = ifElseRegex.firstMatch(normalized);
    if (ifElseMatch == null) return false;

    final condition = (ifElseMatch.group(1) ?? '').trim();
    final ifBody = (ifElseMatch.group(2) ?? '').trim();
    final elseBody = (ifElseMatch.group(3) ?? '').trim();

    // 4) La condición debe usar ambas vars y &&
    final numVarInCond =
        RegExp(r'\b' + RegExp.escape(numVar) + r'\b').hasMatch(condition);
    final boolVarInCond =
        RegExp(r'\b' + RegExp.escape(boolVar) + r'\b').hasMatch(condition);
    final hasAnd = condition.contains('&&');

    if (!numVarInCond || !boolVarInCond || !hasAnd) return false;

    // Además: debe haber alguna comparación en la parte numérica para que no sea "if (age && hasId)"
    final hasComparison = RegExp(r'(===|!==|>=|<=|>|<)').hasMatch(condition);
    if (!hasComparison) return false;

    // 5) Debe haber console.log en ambos cuerpos
    final hasLogInIf =
        RegExp(r'console\.log\s*\(', multiLine: true).hasMatch(ifBody);
    final hasLogInElse =
        RegExp(r'console\.log\s*\(', multiLine: true).hasMatch(elseBody);

    if (!hasLogInIf || !hasLogInElse) return false;

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
    final ok = _isValid310(userInput);
    setState(() => _inputTextColor = ok ? Colors.green : Colors.red);
  }

  void _submit(AllProvider allprovider) {
    final userInput = _controller.text;
    final loc = AppLocalizations.of(context)!;

    if (_isValid310(userInput)) {
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
        _showDialog(loc.js310HintTitle1, loc.js310HintContent1);
      } else if (_failedAttempts == 2) {
        _showDialog(loc.js310HintTitle2, loc.js310HintContent2);
      } else {
        _showDialog(
          loc.js310SolutionTitle,
          loc.js310SolutionContent,
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
      loc.js310ExampleCode1,
      loc.js310ExampleCode2,
      loc.js310ExampleCode3,
      loc.js310ExampleCode4,
      loc.js310ExampleCode5,
    ];

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButtonJsBasics310",
              onPressed: () {
                _showDialog(
                  loc.js310InstructionsTitle,
                  loc.js310InstructionsContent,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "infoButtonjs310",
              onPressed: () {
                _showDialog(
                  loc.js310InfoTitle,
                  loc.js310InfoContent,
                );
              },
              backgroundColor: const Color(0xFF90CAF9),
              child: const Icon(Icons.info_outline, color: Colors.white),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonJsBasics310",
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
                  loc.js310ExampleTitle,
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
                  loc.js310ExampleOutput,
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
                    hintText: loc.js310EnterCodeHint,
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
