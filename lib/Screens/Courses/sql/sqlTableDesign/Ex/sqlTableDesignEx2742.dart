import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

import '../../../../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';

class SqlTableDesignEx2742 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;

  const SqlTableDesignEx2742({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<SqlTableDesignEx2742> createState() => _SqlTableDesignEx2742State();
}

class _SqlTableDesignEx2742State extends State<SqlTableDesignEx2742> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.grey;

  bool _isValid2742(String code) {
    final normalized = code.trim();

    final required = <RegExp>[
      RegExp(r"\bALTER\s+TABLE\b", caseSensitive: false, multiLine: true),
      RegExp(r"\bADD\s+COLUMN\b", caseSensitive: false, multiLine: true),
    ];

    for (final rule in required) {
      if (!rule.hasMatch(normalized)) return false;
    }

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
    final ok = _isValid2742(userInput);
    setState(() => _inputTextColor = ok ? Colors.green : Colors.red);
  }

  void _submit(AllProvider allprovider) {
    final userInput = _controller.text;
    final loc = AppLocalizations.of(context)!;

    if (_isValid2742(userInput)) {
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
        loc.sqlCorrectTitle,
        loc.sqlCorrectExplanation,
        titleColor: Colors.green,
      );
    } else {
      setState(() {
        _failedAttempts++;
        _inputTextColor = Colors.red;
      });

      if (_failedAttempts == 1) {
        _showDialog(
          loc.sql2742HintTitle1,
          loc.sql2742HintContent1,
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          loc.sql2742HintTitle2,
          loc.sql2742HintContent2,
        );
      } else {
        _showDialog(
          loc.sql2742SolutionTitle,
          loc.sql2742SolutionContent,
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
      loc.sql2742ExampleCode1,
      loc.sql2742ExampleCode2,
      loc.sql2742ExampleCode3,
      loc.sql2742ExampleCode4,
      loc.sql2742ExampleCode5,
      loc.sql2742ExampleCode6,
    ].where((e) => e.trim().isNotEmpty).toList();

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButtonSql2742",
              onPressed: () {
                _showDialog(
                  loc.sql2742InstructionsTitle,
                  loc.sql2742InstructionsContent,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "infoButtonSql2742",
              onPressed: () {
                _showDialog(
                  loc.sql2742InfoTitle,
                  loc.sql2742InfoContent,
                );
              },
              backgroundColor: const Color(0xFF90CAF9),
              child: const Icon(Icons.info_outline, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonSql2742",
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
                  loc.sql2742ExampleTitle,
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
                  language: CodeLanguage.sql,
                ),
                const SizedBox(height: 10),
                Text(
                  loc.sql2742ExampleOutput,
                  style: const TextStyle(
                    fontFamily: 'InconsolataRegular',
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: _controller,
                  onChanged: _validateInput,
                  maxLines: 8,
                  style: TextStyle(
                    color: _inputTextColor,
                    fontFamily: 'InconsolataRegular',
                  ),
                  decoration: InputDecoration(
                    hintText: loc.sql2742EnterCodeHint,
                    hintStyle: const TextStyle(
                      fontFamily: 'InconsolataRegular',
                      color: Colors.grey,
                    ),
                    border: const OutlineInputBorder(),
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
