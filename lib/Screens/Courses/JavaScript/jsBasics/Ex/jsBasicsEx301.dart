import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

// Igual que en tu ejemplo de Python: lo importo para tener access a purchaseManagerHive
import '../../../../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';

class JsBasicsEx301 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;

  const JsBasicsEx301({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<JsBasicsEx301> createState() => _JsBasicsEx301State();
}

class _JsBasicsEx301State extends State<JsBasicsEx301> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.grey;

  /// ✅ Requisitos 301:
  /// 1) Debe haber al menos 2 console.log(...)
  /// 2) Uno debe imprimir un string literal: "..." o '...' o `...`
  /// 3) Otro debe imprimir un número o una expresión matemática (solo números/operadores)
  bool _isValid301(String code) {
    final normalized = code.trim();

    // 1) Cuenta llamadas a console.log(
    final callCount =
        RegExp(r'console\.log\s*\(', multiLine: true).allMatches(normalized).length;
    if (callCount < 2) return false;

    // 2) Un console.log("texto") / console.log('texto') / console.log(`texto`)
    final stringOnlyLogRegex = RegExp(
      r'''console\.log\s*\(\s*([`"'])([\s\S]*?)\1\s*\)\s*;?''',
      multiLine: true,
      dotAll: true,
    );
    final stringMatch = stringOnlyLogRegex.firstMatch(normalized);
    final hasStringLog =
        stringMatch != null && (stringMatch.group(2) ?? '').trim().isNotEmpty;
    if (!hasStringLog) return false;

    // 3) Un console.log(2 + 2) / console.log(10) / console.log((3*7))
    //    (argumento solo numérico/operadores)
    final numericOnlyLogRegex = RegExp(
      r'''console\.log\s*\(\s*([\d\s+\-*/%().]+)\s*\)\s*;?''',
      multiLine: true,
    );

    bool hasNumericLog = false;
    for (final m in numericOnlyLogRegex.allMatches(normalized)) {
      final inside = (m.group(1) ?? '').trim();
      if (inside.isEmpty) continue;

      // Debe contener al menos un dígito (para evitar casos como "++--")
      if (!RegExp(r'\d').hasMatch(inside)) continue;

      // Si pasa el regex, ya solo tiene dígitos/espacios/operadores/paréntesis/punto.
      hasNumericLog = true;
      break;
    }

    if (!hasNumericLog) return false;

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
    final ok = _isValid301(userInput);
    setState(() => _inputTextColor = ok ? Colors.green : Colors.red);
  }

  void _submit(AllProvider allprovider) {
    final userInput = _controller.text;
    final loc = AppLocalizations.of(context)!;

    if (_isValid301(userInput)) {
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
        _showDialog(loc.js301HintTitle1, loc.js301HintContent1);
      } else if (_failedAttempts == 2) {
        _showDialog(loc.js301HintTitle2, loc.js301HintContent2);
      } else {
        _showDialog(
          loc.js301SolutionTitle,
          loc.js301SolutionContent,
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
      loc.js301ExampleCode1,
      loc.js301ExampleCode2,
      loc.js301ExampleCode3,
      loc.js301ExampleCode4,
    ];

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButtonJsBasics301",
              onPressed: () {
                _showDialog(
                  loc.js301InstructionsTitle,
                  loc.js301InstructionsContent,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "infoButtonjs301",
              onPressed: () {
                _showDialog(
                  loc.js301InfoTitle,
                  loc.js301InfoContent,
                );
              },
              backgroundColor: const Color(0xFF90CAF9),
              child: const Icon(Icons.info_outline, color: Colors.white),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonJsBasics301",
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
                  loc.js301ExampleTitle,
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
                  loc.js301ExampleOutput,
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
                    hintText: loc.js301EnterCodeHint,
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
