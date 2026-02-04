import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

// Igual que en tus ejercicios: lo usamos para acceder a purchaseManagerHive
import '../../../../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';

class JsBasicsEx302 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;

  const JsBasicsEx302({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<JsBasicsEx302> createState() => _JsBasicsEx302State();
}

class _JsBasicsEx302State extends State<JsBasicsEx302> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.grey;

  bool _isNumericExpr(String s) {
    final t = s.trim();
    if (t.isEmpty) return false;

    // Solo números, espacios, operadores, paréntesis y punto decimal
    if (!RegExp(r'^[\d\s+\-*/%().]+$').hasMatch(t)) return false;

    // Debe contener al menos un dígito
    if (!RegExp(r'\d').hasMatch(t)) return false;

    return true;
  }

  bool _isStringLiteral(String s) {
    final t = s.trim();
    return RegExp(r'''^([`"'])([\s\S]*?)\1$''', dotAll: true).hasMatch(t);
  }

  /// ✅ Requisitos 302:
  /// 1) Declarar una variable con let (let x = 5;)
  /// 2) Declarar una constante con const (const y = 10; o const y = "text";)
  /// 3) Hacer al menos un console.log(...) que use AMBAS variables
  bool _isValid302(String code) {
    final normalized = code.trim();

    // let name = value
    final letRegex = RegExp(
      r'\blet\s+([A-Za-z_$][\w$]*)\s*=\s*([^;\n]+)\s*;?',
      multiLine: true,
    );

    // const name = value
    final constRegex = RegExp(
      r'\bconst\s+([A-Za-z_$][\w$]*)\s*=\s*([^;\n]+)\s*;?',
      multiLine: true,
    );

    final letMatch = letRegex.firstMatch(normalized);
    final constMatch = constRegex.firstMatch(normalized);

    if (letMatch == null || constMatch == null) return false;

    final letName = (letMatch.group(1) ?? '').trim();
    final letValue = (letMatch.group(2) ?? '').trim();

    final constName = (constMatch.group(1) ?? '').trim();
    final constValue = (constMatch.group(2) ?? '').trim();

    if (letName.isEmpty || constName.isEmpty) return false;
    if (letName == constName) return false;

    // let: número o expresión
    if (!_isNumericExpr(letValue)) return false;

    // const: número/expresión o string literal
    final constOk = _isNumericExpr(constValue) || _isStringLiteral(constValue);
    if (!constOk) return false;

    // Debe haber un console.log(...) que use ambos nombres
    final logRegex = RegExp(
      r'''console\.log\s*\(\s*([\s\S]*?)\s*\)\s*;?''',
      multiLine: true,
      dotAll: true,
    );

    bool usesBothInSomeLog = false;
    for (final m in logRegex.allMatches(normalized)) {
      final inside = m.group(1) ?? '';
      final usesLet =
          RegExp(r'\b' + RegExp.escape(letName) + r'\b').hasMatch(inside);
      final usesConst =
          RegExp(r'\b' + RegExp.escape(constName) + r'\b').hasMatch(inside);

      if (usesLet && usesConst) {
        usesBothInSomeLog = true;
        break;
      }
    }

    if (!usesBothInSomeLog) return false;

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
    final ok = _isValid302(userInput);
    setState(() => _inputTextColor = ok ? Colors.green : Colors.red);
  }

  void _submit(AllProvider allprovider) {
    final userInput = _controller.text;
    final loc = AppLocalizations.of(context)!;

    if (_isValid302(userInput)) {
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
        _showDialog(loc.js302HintTitle1, loc.js302HintContent1);
      } else if (_failedAttempts == 2) {
        _showDialog(loc.js302HintTitle2, loc.js302HintContent2);
      } else {
        _showDialog(
          loc.js302SolutionTitle,
          loc.js302SolutionContent,
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
      loc.js302ExampleCode1,
      loc.js302ExampleCode2,
      loc.js302ExampleCode3,
      loc.js302ExampleCode4,
    ];

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButtonJsBasics302",
              onPressed: () {
                _showDialog(
                  loc.js302InstructionsTitle,
                  loc.js302InstructionsContent,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "infoButtonjs302",
              onPressed: () {
                _showDialog(
                  loc.js302InfoTitle,
                  loc.js302InfoContent,
                );
              },
              backgroundColor: const Color(0xFF90CAF9),
              child: const Icon(Icons.info_outline, color: Colors.white),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonJsBasics302",
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
                  loc.js302ExampleTitle,
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
                  loc.js302ExampleOutput,
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
                    hintText: loc.js302EnterCodeHint,
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
