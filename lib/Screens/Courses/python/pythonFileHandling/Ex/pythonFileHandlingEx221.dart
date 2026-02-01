import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

import '../../../../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';

class PythonFileHandlingEx221 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;

  const PythonFileHandlingEx221({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<PythonFileHandlingEx221> createState() => _PythonFileHandlingEx221State();
}

class _PythonFileHandlingEx221State extends State<PythonFileHandlingEx221> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.grey;

  /// ✅ Challenge 2 (221) requisitos:
  /// - Importar pathlib (Path o import pathlib)
  /// - Crear una carpeta con Path(...) y mkdir(...)
  /// - Crear un archivo dentro (folder / "x.txt" o joinpath)
  /// - Escribir texto en el archivo (write_text o open(...,"w"))
  /// - Leer el archivo (read_text o open(...,"r"))
  /// - print(...) mostrando lo leído
 bool _isValid221(String code) {
  final c = code.trimRight();

  // 1) Import Path
  final importPathRegex = RegExp(
    r'(^\s*from\s+pathlib\s+import\s+Path\s*$)|(^\s*import\s+pathlib\s*$)',
    multiLine: true,
  );
  if (!importPathRegex.hasMatch(c)) return false;

  // 2) folderVar = Path("...") o folderVar = pathlib.Path("...")
  // FIX: dos regex (dobles / simples) para no romper Dart con comillas en raw strings
  final folderCreateRegexDouble = RegExp(
    r'\b([A-Za-z_]\w*)\s*=\s*(?:Path|pathlib\s*\.\s*Path)\s*\(\s*"[^"]+"\s*\)',
    multiLine: true,
  );

  final folderCreateRegexSingle = RegExp(
    r"\b([A-Za-z_]\w*)\s*=\s*(?:Path|pathlib\s*\.\s*Path)\s*\(\s*'[^']+'\s*\)",
    multiLine: true,
  );

  final fm = folderCreateRegexDouble.firstMatch(c) ??
      folderCreateRegexSingle.firstMatch(c);

  if (fm == null) return false;

  final folderVar = fm.group(1) ?? '';
  if (folderVar.isEmpty) return false;

  // 3) folderVar.mkdir(...)
  final mkdirRegex = RegExp(
    r'\b' + RegExp.escape(folderVar) + r'\s*\.\s*mkdir\s*\(',
    multiLine: true,
  );
  if (!mkdirRegex.hasMatch(c)) return false;

  // 4) fileVar = folderVar / "file.txt"  OR  fileVar = folderVar.joinpath("file.txt")
  // FIX: también separados por comillas
  final fileCreateSlashDouble = RegExp(
    r'\b([A-Za-z_]\w*)\s*=\s*' +
        RegExp.escape(folderVar) +
        r'\s*/\s*"[^"]+\.txt"\s*$',
    multiLine: true,
  );

  final fileCreateSlashSingle = RegExp(
    r"\b([A-Za-z_]\w*)\s*=\s*" +
        RegExp.escape(folderVar) +
        r"\s*/\s*'[^']+\.txt'\s*$",
    multiLine: true,
  );

  final fileCreateJoinDouble = RegExp(
    r'\b([A-Za-z_]\w*)\s*=\s*' +
        RegExp.escape(folderVar) +
        r'\s*\.\s*joinpath\s*\(\s*"[^"]+\.txt"\s*\)',
    multiLine: true,
  );

  final fileCreateJoinSingle = RegExp(
    r"\b([A-Za-z_]\w*)\s*=\s*" +
        RegExp.escape(folderVar) +
        r"\s*\.\s*joinpath\s*\(\s*'[^']+\.txt'\s*\)",
    multiLine: true,
  );

  RegExpMatch? fileMatch = fileCreateSlashDouble.firstMatch(c) ??
      fileCreateSlashSingle.firstMatch(c) ??
      fileCreateJoinDouble.firstMatch(c) ??
      fileCreateJoinSingle.firstMatch(c);

  if (fileMatch == null) return false;

  final fileVar = fileMatch.group(1) ?? '';
  if (fileVar.isEmpty) return false;

  // 5) Escribir: fileVar.write_text(...) OR open(fileVar,"w") OR with open(fileVar,"w") ...
  final writeTextRegex = RegExp(
    r'\b' + RegExp.escape(fileVar) + r'\s*\.\s*write_text\s*\(',
    multiLine: true,
  );

  final openWriteRegexDouble = RegExp(
    r'\bopen\s*\(\s*' + RegExp.escape(fileVar) + r'\s*,\s*"w"',
    multiLine: true,
  );

  final openWriteRegexSingle = RegExp(
    r"\bopen\s*\(\s*" + RegExp.escape(fileVar) + r"\s*,\s*'w'",
    multiLine: true,
  );

  final hasWrite = writeTextRegex.hasMatch(c) ||
      openWriteRegexDouble.hasMatch(c) ||
      openWriteRegexSingle.hasMatch(c);

  if (!hasWrite) return false;

  // 6) Leer: fileVar.read_text() OR open(fileVar,"r")
  final readTextRegex = RegExp(
    r'\b' + RegExp.escape(fileVar) + r'\s*\.\s*read_text\s*\(',
    multiLine: true,
  );

  final openReadRegexDouble = RegExp(
    r'\bopen\s*\(\s*' + RegExp.escape(fileVar) + r'\s*,\s*"r"',
    multiLine: true,
  );

  final openReadRegexSingle = RegExp(
    r"\bopen\s*\(\s*" + RegExp.escape(fileVar) + r"\s*,\s*'r'",
    multiLine: true,
  );

  final hasRead = readTextRegex.hasMatch(c) ||
      openReadRegexDouble.hasMatch(c) ||
      openReadRegexSingle.hasMatch(c);

  if (!hasRead) return false;

  // 7) print(...) y que use lo leído (directo fileVar.read_text o una variable)
  final printRegex = RegExp(
    r'\bprint\s*\(([\s\S]*?)\)',
    multiLine: true,
    dotAll: true,
  );
  final pm2 = printRegex.firstMatch(c);
  if (pm2 == null) return false;

  final insidePrint = pm2.group(1) ?? '';

  // A) print(fileVar.read_text())
  final printDirectRead = RegExp(
    r'\b' + RegExp.escape(fileVar) + r'\s*\.\s*read_text\s*\(',
    multiLine: true,
  ).hasMatch(insidePrint);

  if (printDirectRead) return true;

  // B) text = fileVar.read_text(); print(text)
  final textAssignRegex = RegExp(
    r'\b([A-Za-z_]\w*)\s*=\s*' +
        RegExp.escape(fileVar) +
        r'\s*\.\s*read_text\s*\(',
    multiLine: true,
  );
  final tm = textAssignRegex.firstMatch(c);
  if (tm != null) {
    final textVar = tm.group(1) ?? '';
    if (textVar.isNotEmpty) {
      final printsTextVar = RegExp(
        r'\b' + RegExp.escape(textVar) + r'\b',
      ).hasMatch(insidePrint);
      if (printsTextVar) return true;
    }
  }

  // C) con open(...,"r") as f: text = f.read(); print(text)
  final fReadAssignRegex = RegExp(
    r'\b([A-Za-z_]\w*)\s*=\s*\w+\s*\.\s*read\s*\(\s*\)',
    multiLine: true,
  );
  final fr = fReadAssignRegex.firstMatch(c);
  if (fr != null) {
    final textVar = fr.group(1) ?? '';
    if (textVar.isNotEmpty) {
      final printsTextVar = RegExp(
        r'\b' + RegExp.escape(textVar) + r'\b',
      ).hasMatch(insidePrint);
      if (printsTextVar) return true;
    }
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
    final ok = _isValid221(userInput);
    setState(() => _inputTextColor = ok ? Colors.green : Colors.red);
  }

  void _submit(AllProvider allprovider) {
    final userInput = _controller.text;
    final loc = AppLocalizations.of(context)!;

    if (_isValid221(userInput)) {
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
        _showDialog(loc.python221HintTitle1, loc.python221HintContent1);
      } else if (_failedAttempts == 2) {
        _showDialog(loc.python221HintTitle2, loc.python221HintContent2);
      } else {
        _showDialog(
          loc.python221SolutionTitle,
          loc.python221SolutionContent,
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
      loc.python221ExampleCode1,
      loc.python221ExampleCode2,
      loc.python221ExampleCode3,
      loc.python221ExampleCode4,
      loc.python221ExampleCode5,
      loc.python221ExampleCode6,
      loc.python221ExampleCode7,
      loc.python221ExampleCode8,
    ].where((e) => e.trim().isNotEmpty).toList();

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButtonPythonFileHandling221",
              onPressed: () {
                _showDialog(
                  loc.python221InstructionsTitle,
                  loc.python221InstructionsContent,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonPythonFileHandling221",
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
                  loc.python221ExampleTitle,
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
                  loc.python221ExampleOutput,
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
                    hintText: loc.python221EnterCodeHint,
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
