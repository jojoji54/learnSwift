import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

import '../../../../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';

class PythonFileHandlingEx215 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;

  const PythonFileHandlingEx215({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<PythonFileHandlingEx215> createState() => _PythonFileHandlingEx215State();
}

class _PythonFileHandlingEx215State extends State<PythonFileHandlingEx215> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.grey;

  /// ✅ Challenge 1 (215) - Requisitos:
  /// 1) try:
  /// 2) with open(..., "r") as f:
  /// 3) with open(..., "w") as out:
  /// 4) Leer algo del archivo (read/readlines o for line in f)
  /// 5) Escribir al archivo (out.write(...) o print(..., file=out))
  /// 6) except FileNotFoundError:
  /// 7) print(...) (en try o en except)
  bool _isValid215(String code) {
    final c = code.trimRight();

    final tryRegex = RegExp(r'^\s*try\s*:\s*$', multiLine: true);
    if (!tryRegex.hasMatch(c)) return false;

    final exceptRegex = RegExp(
      r'^\s*except\s+FileNotFoundError(?:\s+as\s+[A-Za-z_]\w*)?\s*:\s*$',
      multiLine: true,
    );
    if (!exceptRegex.hasMatch(c)) return false;

    // Capturamos var del archivo en modo lectura
    final withReadRegex = RegExp(
      r'''^\s*with\s+open\s*\(\s*(?:"[^"]+"|'[^']+')\s*,\s*(?:"r"|'r')\s*\)\s+as\s+([A-Za-z_]\w*)\s*:\s*$''',
      multiLine: true,
    );
    final rm = withReadRegex.firstMatch(c);
    if (rm == null) return false;

    final readVar = rm.group(1) ?? '';
    if (readVar.isEmpty) return false;

    // Capturamos var del archivo en modo escritura
    final withWriteRegex = RegExp(
      r'''^\s*with\s+open\s*\(\s*(?:"[^"]+"|'[^']+')\s*,\s*(?:"w"|'w')\s*\)\s+as\s+([A-Za-z_]\w*)\s*:\s*$''',
      multiLine: true,
    );
    final wm = withWriteRegex.firstMatch(c);
    if (wm == null) return false;

    final writeVar = wm.group(1) ?? '';
    if (writeVar.isEmpty) return false;

    // Leer del archivo
    final readsByFor = RegExp(
      r'^\s*for\s+[A-Za-z_]\w*\s+in\s+' + RegExp.escape(readVar) + r'\s*:\s*$',
      multiLine: true,
    ).hasMatch(c);

    final readsByReadLines = RegExp(
      r'\b' + RegExp.escape(readVar) + r'\s*\.\s*readlines\s*\(',
      multiLine: true,
    ).hasMatch(c);

    final readsByRead = RegExp(
      r'\b' + RegExp.escape(readVar) + r'\s*\.\s*read\s*\(',
      multiLine: true,
    ).hasMatch(c);

    if (!readsByFor && !readsByReadLines && !readsByRead) return false;

    // Escribir al archivo
    final writesByWrite = RegExp(
      r'\b' + RegExp.escape(writeVar) + r'\s*\.\s*write\s*\(',
      multiLine: true,
    ).hasMatch(c);

    final writesByPrintFile = RegExp(
      r'\bprint\s*\([\s\S]*?file\s*=\s*' + RegExp.escape(writeVar) + r'\b',
      multiLine: true,
      dotAll: true,
    ).hasMatch(c);

    if (!writesByWrite && !writesByPrintFile) return false;

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
    final ok = _isValid215(userInput);
    setState(() => _inputTextColor = ok ? Colors.green : Colors.red);
  }

  void _submit(AllProvider allprovider) {
    final userInput = _controller.text;
    final loc = AppLocalizations.of(context)!;

    if (_isValid215(userInput)) {
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
        _showDialog(loc.python215HintTitle1, loc.python215HintContent1);
      } else if (_failedAttempts == 2) {
        _showDialog(loc.python215HintTitle2, loc.python215HintContent2);
      } else {
        _showDialog(
          loc.python215SolutionTitle,
          loc.python215SolutionContent,
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
      loc.python215ExampleCode1,
      loc.python215ExampleCode2,
      loc.python215ExampleCode3,
      loc.python215ExampleCode4,
      loc.python215ExampleCode5,
      loc.python215ExampleCode6,
      loc.python215ExampleCode7,
      loc.python215ExampleCode8,
      loc.python215ExampleCode9,
    ].where((e) => e.trim().isNotEmpty).toList();

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButtonPythonFileHandling215",
              onPressed: () {
                _showDialog(
                  loc.python215InstructionsTitle,
                  loc.python215InstructionsContent,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonPythonFileHandling215",
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
                  loc.python215ExampleTitle,
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
                  loc.python215ExampleOutput,
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
                    hintText: loc.python215EnterCodeHint,
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
