import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

import '../../../../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';

class PythonFileHandlingEx210 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;

  const PythonFileHandlingEx210({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<PythonFileHandlingEx210> createState() => _PythonFileHandlingEx210State();
}

class _PythonFileHandlingEx210State extends State<PythonFileHandlingEx210> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.grey;

  /// ✅ Requisitos (210):
  /// 1) Debe existir: with open("file", "r") as f:   (o "w"/"a")
  /// 2) Dentro del bloque, usar f.read() o f.write(...)
  /// 3) Debe existir print(...)
  ///
  /// NOTA: NO exigimos close() porque el with lo hace.
bool _isValid210(String code) {
  final c = code.trimRight();

  // with open("x", "r") as f:
  // FIX: separar dobles/simples para evitar líos de comillas en Dart raw strings

  // with open("file", "r") as f:
  final withOpenDouble = RegExp(
    r'^\s*with\s+open\s*\(\s*"[^"]+"\s*,\s*"[rwa]"\s*\)\s+as\s+([A-Za-z_]\w*)\s*:\s*$',
    multiLine: true,
  );

  // with open('file', 'r') as f:
  final withOpenSingle = RegExp(
    r"^\s*with\s+open\s*\(\s*'[^']+'\s*,\s*'[rwa]'\s*\)\s+as\s+([A-Za-z_]\w*)\s*:\s*$",
    multiLine: true,
  );

  final m = withOpenDouble.firstMatch(c) ?? withOpenSingle.firstMatch(c);
  if (m == null) return false;

  final fVar = m.group(1) ?? '';
  if (fVar.isEmpty) return false;

  // Asegura que tras el "with" haya líneas (bloque)
  final afterWith = c.substring(m.end);
  if (afterWith.trim().isEmpty) return false;

  // Dentro: f.read() o f.write("...") / f.write('...')
  final readRegex = RegExp(
    r'\b' + RegExp.escape(fVar) + r'\s*\.\s*read\s*\(\s*\)',
    multiLine: true,
  );

  final writeDouble = RegExp(
    r'\b' + RegExp.escape(fVar) + r'\s*\.\s*write\s*\(\s*"[^"]*"\s*\)',
    multiLine: true,
    dotAll: true,
  );

  final writeSingle = RegExp(
    r"\b" + RegExp.escape(fVar) + r"\s*\.\s*write\s*\(\s*'[^']*'\s*\)",
    multiLine: true,
    dotAll: true,
  );

  final hasReadOrWrite =
      readRegex.hasMatch(c) || writeDouble.hasMatch(c) || writeSingle.hasMatch(c);
  if (!hasReadOrWrite) return false;

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
    final ok = _isValid210(userInput);
    setState(() => _inputTextColor = ok ? Colors.green : Colors.red);
  }

  void _submit(AllProvider allprovider) {
    final userInput = _controller.text;
    final loc = AppLocalizations.of(context)!;

    if (_isValid210(userInput)) {
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
        _showDialog(loc.python210HintTitle1, loc.python210HintContent1);
      } else if (_failedAttempts == 2) {
        _showDialog(loc.python210HintTitle2, loc.python210HintContent2);
      } else {
        _showDialog(
          loc.python210SolutionTitle,
          loc.python210SolutionContent,
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
      loc.python210ExampleCode1,
      loc.python210ExampleCode2,
      loc.python210ExampleCode3,
    ].where((e) => e.trim().isNotEmpty).toList();

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButtonPythonFileHandling210",
              onPressed: () {
                _showDialog(
                  loc.python210InstructionsTitle,
                  loc.python210InstructionsContent,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "infoButtonpython210",
              onPressed: () {
                _showDialog(
                  loc.python210InfoTitle,
                  loc.python210InfoContent,
                );
              },
              backgroundColor: const Color(0xFF90CAF9),
              child: const Icon(Icons.info_outline, color: Colors.white),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonPythonFileHandling210",
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
                  loc.python210ExampleTitle,
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
                  loc.python210ExampleOutput,
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
                    hintText: loc.python210EnterCodeHint,
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
