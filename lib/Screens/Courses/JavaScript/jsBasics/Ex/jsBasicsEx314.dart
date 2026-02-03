import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

// Igual que en tus ejercicios: lo usamos para acceder a purchaseManagerHive
import '../../../../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';

class JsBasicsEx314 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;

  const JsBasicsEx314({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<JsBasicsEx314> createState() => _JsBasicsEx314State();
}

class _JsBasicsEx314State extends State<JsBasicsEx314> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.grey;

  /// ✅ Requisitos 314:
  /// A) function name(param) ... + return + console.log(name(...))
  /// o
  /// B) const name = (param) => ... + (return o implicit) + console.log(name(...))
  bool _isValid314(String code) {
    final normalized = code.trim();

    // Detectar function clásica: function fn(param)
    final fnClassicRegex = RegExp(
      r'\bfunction\s+([A-Za-z_$][\w$]*)\s*\(\s*([A-Za-z_$][\w$]*)\s*\)',
      multiLine: true,
    );

    // Detectar arrow: const fn = (param) => ...
    final fnArrowRegex = RegExp(
      r'\bconst\s+([A-Za-z_$][\w$]*)\s*=\s*\(\s*([A-Za-z_$][\w$]*)\s*\)\s*=>',
      multiLine: true,
    );

    String? fnName;
    String? paramName;
    bool isArrow = false;

    final classicMatch = fnClassicRegex.firstMatch(normalized);
    final arrowMatch = fnArrowRegex.firstMatch(normalized);

    if (classicMatch != null) {
      fnName = (classicMatch.group(1) ?? '').trim();
      paramName = (classicMatch.group(2) ?? '').trim();
      isArrow = false;
    } else if (arrowMatch != null) {
      fnName = (arrowMatch.group(1) ?? '').trim();
      paramName = (arrowMatch.group(2) ?? '').trim();
      isArrow = true;
    } else {
      return false;
    }

    if (fnName.isEmpty || paramName.isEmpty) return false;

    // Debe existir un return:
    // - para clásica: exigimos "return"
    // - para arrow: permitimos "return" O retorno implícito (=> expr)
    final hasReturn = RegExp(r'\breturn\b').hasMatch(normalized);

    if (!isArrow && !hasReturn) return false;

    if (isArrow && !hasReturn) {
      // Intentar detectar retorno implícito:
      // const fn = (x) => x + 1;
      // const fn = (x) => (x + 1);
      // const fn = (x) => "hi";
      final implicitReturnRegex = RegExp(
        r'\bconst\s+' +
            RegExp.escape(fnName) +
            r'\s*=\s*\(\s*' +
            RegExp.escape(paramName) +
            r'\s*\)\s*=>\s*(?:\([^\)]*\)|[^;\n]+)\s*;?',
        multiLine: true,
      );

      if (!implicitReturnRegex.hasMatch(normalized)) return false;
    }

    // Debe haber un console.log(fnName(...))
    final logCallRegex = RegExp(
      r'console\.log\s*\(\s*' +
          RegExp.escape(fnName) +
          r'\s*\(\s*[^)]*\)\s*\)\s*;?',
      multiLine: true,
      dotAll: true,
    );

    if (!logCallRegex.hasMatch(normalized)) return false;

    // Además: dentro de la función debe usarse el param (para que no sea decorativa)
    final usesParamRegex =
        RegExp(r'\b' + RegExp.escape(paramName) + r'\b');
    if (!usesParamRegex.hasMatch(normalized)) return false;

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
    final ok = _isValid314(userInput);
    setState(() => _inputTextColor = ok ? Colors.green : Colors.red);
  }

  void _submit(AllProvider allprovider) {
    final userInput = _controller.text;
    final loc = AppLocalizations.of(context)!;

    if (_isValid314(userInput)) {
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
        _showDialog(loc.js314HintTitle1, loc.js314HintContent1);
      } else if (_failedAttempts == 2) {
        _showDialog(loc.js314HintTitle2, loc.js314HintContent2);
      } else {
        _showDialog(
          loc.js314SolutionTitle,
          loc.js314SolutionContent,
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
      loc.js314ExampleCode1,
      loc.js314ExampleCode2,
      loc.js314ExampleCode3,
      loc.js314ExampleCode4,
      loc.js314ExampleCode5,
    ];

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButtonJsBasics314",
              onPressed: () {
                _showDialog(
                  loc.js314InstructionsTitle,
                  loc.js314InstructionsContent,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "infoButtonjs314",
              onPressed: () {
                _showDialog(
                  loc.js314InfoTitle,
                  loc.js314InfoContent,
                );
              },
              backgroundColor: const Color(0xFF90CAF9),
              child: const Icon(Icons.info_outline, color: Colors.white),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonJsBasics314",
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
                  loc.js314ExampleTitle,
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
                  loc.js314ExampleOutput,
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
                    hintText: loc.js314EnterCodeHint,
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
