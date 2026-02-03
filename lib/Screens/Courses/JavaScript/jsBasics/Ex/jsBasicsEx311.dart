import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

// Igual que en tus ejercicios: lo usamos para acceder a purchaseManagerHive
import '../../../../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';

class JsBasicsEx311 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;

  const JsBasicsEx311({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<JsBasicsEx311> createState() => _JsBasicsEx311State();
}

class _JsBasicsEx311State extends State<JsBasicsEx311> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.grey;

  /// ✅ Requisitos 311:
  /// 1) for (...) debe existir
  /// 2) Debe tener init; condition; update
  /// 3) Dentro del loop, console.log(...) debe usar la variable del loop
  bool _isValid311(String code) {
    final normalized = code.trim();

    // Captura: for ( init ; cond ; update ) body
    final forRegex = RegExp(
      r'''for\s*\(\s*([^;]*?)\s*;\s*([^;]*?)\s*;\s*([^\)]*?)\s*\)\s*(\{[\s\S]*?\}|[^\n;]+;?)''',
      multiLine: true,
      dotAll: true,
    );

    final match = forRegex.firstMatch(normalized);
    if (match == null) return false;

    final init = (match.group(1) ?? '').trim();
    final cond = (match.group(2) ?? '').trim();
    final update = (match.group(3) ?? '').trim();
    final body = (match.group(4) ?? '').trim();

    if (init.isEmpty || cond.isEmpty || update.isEmpty || body.isEmpty) {
      return false;
    }

    // Extraer la variable del init: let i = 0 / var i = 0 / i = 0
    final initVarRegex = RegExp(
      r'''(?:let|var|const)?\s*([A-Za-z_$][\w$]*)\s*=\s*[-]?\d+''',
      multiLine: true,
    );
    final initVarMatch = initVarRegex.firstMatch(init);
    if (initVarMatch == null) return false;

    final loopVar = (initVarMatch.group(1) ?? '').trim();
    if (loopVar.isEmpty) return false;

    // Condición debe usar la variable y un operador típico < <= > >=
    final condOk = RegExp(r'\b' + RegExp.escape(loopVar) + r'\b').hasMatch(cond) &&
        RegExp(r'(<=|>=|<|>)').hasMatch(cond);
    if (!condOk) return false;

    // Update debe ser i++ / ++i / i += 1 / i = i + 1 / i -= 1 ...
    final updateOk = RegExp(
      r'''(\+\+\s*''' +
          RegExp.escape(loopVar) +
          r'''|\b''' +
          RegExp.escape(loopVar) +
          r'''\s*\+\+|\b''' +
          RegExp.escape(loopVar) +
          r'''\s*[\+\-]=\s*\d+|\b''' +
          RegExp.escape(loopVar) +
          r'''\s*=\s*''' +
          RegExp.escape(loopVar) +
          r'''\s*[\+\-]\s*\d+)''',
      multiLine: true,
    ).hasMatch(update);
    if (!updateOk) return false;

    // Body debe tener console.log(...) y usar loopVar dentro
    final logRegex = RegExp(
      r'''console\.log\s*\(\s*([\s\S]*?)\s*\)\s*;?''',
      multiLine: true,
      dotAll: true,
    );

    bool hasLogUsingVar = false;
    for (final m in logRegex.allMatches(body)) {
      final inside = m.group(1) ?? '';
      if (RegExp(r'\b' + RegExp.escape(loopVar) + r'\b').hasMatch(inside)) {
        hasLogUsingVar = true;
        break;
      }
    }

    if (!hasLogUsingVar) return false;

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
    final ok = _isValid311(userInput);
    setState(() => _inputTextColor = ok ? Colors.green : Colors.red);
  }

  void _submit(AllProvider allprovider) {
    final userInput = _controller.text;
    final loc = AppLocalizations.of(context)!;

    if (_isValid311(userInput)) {
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
        _showDialog(loc.js311HintTitle1, loc.js311HintContent1);
      } else if (_failedAttempts == 2) {
        _showDialog(loc.js311HintTitle2, loc.js311HintContent2);
      } else {
        _showDialog(
          loc.js311SolutionTitle,
          loc.js311SolutionContent,
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
      loc.js311ExampleCode1,
      loc.js311ExampleCode2,
      loc.js311ExampleCode3,
      loc.js311ExampleCode4,
      loc.js311ExampleCode5,
    ];

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButtonJsBasics311",
              onPressed: () {
                _showDialog(
                  loc.js311InstructionsTitle,
                  loc.js311InstructionsContent,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "infoButtonjs311",
              onPressed: () {
                _showDialog(
                  loc.js311InfoTitle,
                  loc.js311InfoContent,
                );
              },
              backgroundColor: const Color(0xFF90CAF9),
              child: const Icon(Icons.info_outline, color: Colors.white),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonJsBasics311",
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
                  loc.js311ExampleTitle,
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
                  loc.js311ExampleOutput,
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
                    hintText: loc.js311EnterCodeHint,
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
