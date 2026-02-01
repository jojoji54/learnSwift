import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

import '../../../../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';

class PythonFileHandlingEx209 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;

  const PythonFileHandlingEx209({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<PythonFileHandlingEx209> createState() => _PythonFileHandlingEx209State();
}

class _PythonFileHandlingEx209State extends State<PythonFileHandlingEx209> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.grey;

/// ✅ Requisitos (209):
/// 1) fileVar = open("something", "a")  (append)
/// 2) fileVar.write("...") (texto)
/// 3) fileVar.close()
/// 4) print(...)
///
/// Bonus: que se vea un \n en el write (pero NO obligatorio).
bool _isValid209(String code) {
  final c = code.trimRight();

  // Captura varName en: f = open("log.txt", "a")  o  f = open('log.txt', 'a')
  // FIX: separar dobles/simples para evitar líos de comillas en Dart raw strings

  final openADouble = RegExp(
    r'^\s*([A-Za-z_]\w*)\s*=\s*open\s*\(\s*"[^"]+"\s*,\s*"a"\s*\)\s*$',
    multiLine: true,
  );

  final openASingle = RegExp(
    r"^\s*([A-Za-z_]\w*)\s*=\s*open\s*\(\s*'[^']+'\s*,\s*'a'\s*\)\s*$",
    multiLine: true,
  );

  final om = openADouble.firstMatch(c) ?? openASingle.firstMatch(c);
  if (om == null) return false;

  final fileVar = om.group(1) ?? '';
  if (fileVar.isEmpty) return false;

  // fileVar.write("...")  o  fileVar.write('...')
  final writeDouble = RegExp(
    r'\b' + RegExp.escape(fileVar) + r'\s*\.\s*write\s*\(\s*"[^"]*"\s*\)',
    multiLine: true,
    dotAll: true,
  );

  final writeSingle = RegExp(
    r"\b" + RegExp.escape(fileVar) + r"\s*\.\s*write\s*\(\s*'[^']*'\s*\)",
    multiLine: true,
    dotAll: true,
  );

  if (!writeDouble.hasMatch(c) && !writeSingle.hasMatch(c)) return false;

  // fileVar.close()
  final closeRegex = RegExp(
    r'\b' + RegExp.escape(fileVar) + r'\s*\.\s*close\s*\(\s*\)',
    multiLine: true,
  );
  if (!closeRegex.hasMatch(c)) return false;

  // print(...)
  final printRegex = RegExp(r'\bprint\s*\(', multiLine: true);
  if (!printRegex.hasMatch(c)) return false;

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
    final ok = _isValid209(userInput);
    setState(() => _inputTextColor = ok ? Colors.green : Colors.red);
  }

  void _submit(AllProvider allprovider) {
    final userInput = _controller.text;
    final loc = AppLocalizations.of(context)!;

    if (_isValid209(userInput)) {
      purchaseManagerHive.updatePurchase(
        widget.id,
        purchased: true,
        completed: true,
      );

      allprovider.data[Constant.catIndex].catExercise[widget.id].completed = true;
      allprovider.setData(allprovider.data);

      _controller.clear();

      _showDialog(
        loc.pythonCorrectTitle,
        loc.pythonCorrectExplanation,
        titleColor: Colors.green,
      );
    } else {
      setState(() {
        _failedAttempts++;
        _inputTextColor = Colors.red;
      });

      if (_failedAttempts == 1) {
        _showDialog(loc.python209HintTitle1, loc.python209HintContent1);
      } else if (_failedAttempts == 2) {
        _showDialog(loc.python209HintTitle2, loc.python209HintContent2);
      } else {
        _showDialog(
          loc.python209SolutionTitle,
          loc.python209SolutionContent,
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
      loc.python209ExampleCode1,
      loc.python209ExampleCode2,
      loc.python209ExampleCode3,
      loc.python209ExampleCode4,
    ].where((e) => e.trim().isNotEmpty).toList();

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButtonPythonFileHandling209",
              onPressed: () {
                _showDialog(
                  loc.python209InstructionsTitle,
                  loc.python209InstructionsContent,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonPythonFileHandling209",
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
                  loc.python209ExampleTitle,
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
                ),

                const SizedBox(height: 10),

                Text(
                  loc.python209ExampleOutput,
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
                    hintText: loc.python209EnterCodeHint,
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
