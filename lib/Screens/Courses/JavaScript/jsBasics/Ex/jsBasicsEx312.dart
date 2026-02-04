import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

// Igual que en tus ejercicios: lo usamos para acceder a purchaseManagerHive
import '../../../../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';

class JsBasicsEx312 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;

  const JsBasicsEx312({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<JsBasicsEx312> createState() => _JsBasicsEx312State();
}

class _JsBasicsEx312State extends State<JsBasicsEx312> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.grey;

  /// ✅ Requisitos 312:
  /// 1) Declarar un contador numérico (let/var/const i = número)
  /// 2) Usar while (condición) ...
  /// 3) Dentro del while:
  ///    - console.log(...) usando i
  ///    - y un incremento/decremento de i (i++, i += 1, i = i + 1, etc.)
  bool _isValid312(String code) {
    final normalized = code.trim();

    // 1) contador: let i = 0; / var i = 0; / const i = 0;
    // (permitimos const aunque en práctica luego no podrías incrementarlo; la validación no ejecuta)
    final counterRegex = RegExp(
      r'\b(?:let|var|const)\s+([A-Za-z_$][\w$]*)\s*=\s*[-]?\d+\s*;?',
      multiLine: true,
    );

    final counterMatch = counterRegex.firstMatch(normalized);
    if (counterMatch == null) return false;

    final counterVar = (counterMatch.group(1) ?? '').trim();
    if (counterVar.isEmpty) return false;

    // 2) while ( ... ) body
    final whileRegex = RegExp(
      r'''while\s*\(\s*([^\)]*?)\s*\)\s*(\{[\s\S]*?\}|[^\n;]+;?)''',
      multiLine: true,
      dotAll: true,
    );

    // Necesitamos al menos un while que use el contador
    for (final m in whileRegex.allMatches(normalized)) {
      final cond = (m.group(1) ?? '').trim();
      final body = (m.group(2) ?? '').trim();

      if (cond.isEmpty || body.isEmpty) continue;

      // Condición: debe usar counterVar y un operador < <= > >= !== ===
      final usesVar =
          RegExp(r'\b' + RegExp.escape(counterVar) + r'\b').hasMatch(cond);
      final hasOp = RegExp(r'(<=|>=|<|>|===|!==)').hasMatch(cond);
      if (!usesVar || !hasOp) continue;

      // Body: debe contener console.log(...) con counterVar
      final logRegex = RegExp(
        r'''console\.log\s*\(\s*([\s\S]*?)\s*\)\s*;?''',
        multiLine: true,
        dotAll: true,
      );

      bool hasLogWithVar = false;
      for (final lm in logRegex.allMatches(body)) {
        final inside = lm.group(1) ?? '';
        if (RegExp(r'\b' + RegExp.escape(counterVar) + r'\b')
            .hasMatch(inside)) {
          hasLogWithVar = true;
          break;
        }
      }
      if (!hasLogWithVar) continue;

      // Body: debe incrementar/decrementar counterVar
      final incRegex = RegExp(
        r'''(\+\+\s*''' +
            RegExp.escape(counterVar) +
            r'''|\b''' +
            RegExp.escape(counterVar) +
            r'''\s*\+\+|\b''' +
            RegExp.escape(counterVar) +
            r'''\s*[\+\-]=\s*\d+|\b''' +
            RegExp.escape(counterVar) +
            r'''\s*=\s*''' +
            RegExp.escape(counterVar) +
            r'''\s*[\+\-]\s*\d+)''',
        multiLine: true,
      );

      if (!incRegex.hasMatch(body)) continue;

      // Si llegamos aquí, cumple
      return true;
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
    final ok = _isValid312(userInput);
    setState(() => _inputTextColor = ok ? Colors.green : Colors.red);
  }

  void _submit(AllProvider allprovider) {
    final userInput = _controller.text;
    final loc = AppLocalizations.of(context)!;

    if (_isValid312(userInput)) {
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
        _showDialog(loc.js312HintTitle1, loc.js312HintContent1);
      } else if (_failedAttempts == 2) {
        _showDialog(loc.js312HintTitle2, loc.js312HintContent2);
      } else {
        _showDialog(
          loc.js312SolutionTitle,
          loc.js312SolutionContent,
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
      loc.js312ExampleCode1,
      loc.js312ExampleCode2,
      loc.js312ExampleCode3,
      loc.js312ExampleCode4,
      loc.js312ExampleCode5,
    ];

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButtonJsBasics312",
              onPressed: () {
                _showDialog(
                  loc.js312InstructionsTitle,
                  loc.js312InstructionsContent,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "infoButtonjs312",
              onPressed: () {
                _showDialog(
                  loc.js312InfoTitle,
                  loc.js312InfoContent,
                );
              },
              backgroundColor: const Color(0xFF90CAF9),
              child: const Icon(Icons.info_outline, color: Colors.white),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonJsBasics312",
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
                  loc.js312ExampleTitle,
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
                  loc.js312ExampleOutput,
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
                    hintText: loc.js312EnterCodeHint,
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
