import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

// Igual que en tus ejercicios: lo usamos para acceder a purchaseManagerHive
import '../../../../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';

class JsBasicsEx309 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;

  const JsBasicsEx309({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<JsBasicsEx309> createState() => _JsBasicsEx309State();
}

class _JsBasicsEx309State extends State<JsBasicsEx309> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.grey;

  /// ✅ Requisitos 309:
  /// 1) Declarar dos booleanos: let/const a = true/false; let/const b = true/false;
  /// 2) Usar && al menos una vez
  /// 3) Usar || al menos una vez
  /// 4) Tener al menos 2 console.log(...) que usen a y b con && / ||
  bool _isValid309(String code) {
    final normalized = code.trim();

    // 1) Encontrar dos declaraciones booleanas
    final boolDeclRegex = RegExp(
      r'\b(?:let|const)\s+([A-Za-z_$][\w$]*)\s*=\s*(true|false)\s*;?',
      multiLine: true,
    );

    final matches = boolDeclRegex.allMatches(normalized).toList();
    if (matches.length < 2) return false;

    final a = (matches[0].group(1) ?? '').trim();
    String? b;
    for (var i = 1; i < matches.length; i++) {
      final name = (matches[i].group(1) ?? '').trim();
      if (name.isNotEmpty && name != a) {
        b = name;
        break;
      }
    }
    if (a.isEmpty || b == null || b!.isEmpty) return false;

    // 2) y 3) Deben aparecer && y ||
    final hasAnd = normalized.contains('&&');
    final hasOr = normalized.contains('||');
    if (!hasAnd || !hasOr) return false;

    // 4) Logs: al menos 2 console.log(...)
    final logRegex = RegExp(
      r'''console\.log\s*\(\s*([\s\S]*?)\s*\)\s*;?''',
      multiLine: true,
      dotAll: true,
    );

    int andLogs = 0;
    int orLogs = 0;

    final aRegex = RegExp(r'\b' + RegExp.escape(a) + r'\b');
    final bRegex = RegExp(r'\b' + RegExp.escape(b!) + r'\b');

    for (final m in logRegex.allMatches(normalized)) {
      final inside = m.group(1) ?? '';

      final usesA = aRegex.hasMatch(inside);
      final usesB = bRegex.hasMatch(inside);

      if (!usesA || !usesB) continue;

      if (inside.contains('&&')) andLogs++;
      if (inside.contains('||')) orLogs++;
    }

    // Queremos al menos un log con && y otro con ||
    if (andLogs < 1 || orLogs < 1) return false;

    // Además, al menos 2 logs en total (como práctica)
    final totalLogs = logRegex.allMatches(normalized).length;
    if (totalLogs < 2) return false;

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
    final ok = _isValid309(userInput);
    setState(() => _inputTextColor = ok ? Colors.green : Colors.red);
  }

  void _submit(AllProvider allprovider) {
    final userInput = _controller.text;
    final loc = AppLocalizations.of(context)!;

    if (_isValid309(userInput)) {
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
        _showDialog(loc.js309HintTitle1, loc.js309HintContent1);
      } else if (_failedAttempts == 2) {
        _showDialog(loc.js309HintTitle2, loc.js309HintContent2);
      } else {
        _showDialog(
          loc.js309SolutionTitle,
          loc.js309SolutionContent,
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
      loc.js309ExampleCode1,
      loc.js309ExampleCode2,
      loc.js309ExampleCode3,
      loc.js309ExampleCode4,
      loc.js309ExampleCode5,
    ];

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButtonJsBasics309",
              onPressed: () {
                _showDialog(
                  loc.js309InstructionsTitle,
                  loc.js309InstructionsContent,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonJsBasics309",
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
                  loc.js309ExampleTitle,
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
                  loc.js309ExampleOutput,
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
                    hintText: loc.js309EnterCodeHint,
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
