import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

import '../../../../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';

class SqlSetOpsEx2702 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;

  const SqlSetOpsEx2702({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<SqlSetOpsEx2702> createState() => _SqlSetOpsEx2702State();
}

class _SqlSetOpsEx2702State extends State<SqlSetOpsEx2702> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.grey;

  bool _isValid2702(String code) {
    final normalized = code.trim();

    final required = <RegExp>[
      RegExp(r"\bAS\b", caseSensitive: false, multiLine: true),
      RegExp(r"\bUNION\b", caseSensitive: false, multiLine: true),
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
    final ok = _isValid2702(userInput);
    setState(() => _inputTextColor = ok ? Colors.green : Colors.red);
  }

  void _submit(AllProvider allprovider) {
    final userInput = _controller.text;
    final loc = AppLocalizations.of(context)!;

    if (_isValid2702(userInput)) {
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
          loc.sql2702HintTitle1,
          loc.sql2702HintContent1,
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          loc.sql2702HintTitle2,
          loc.sql2702HintContent2,
        );
      } else {
        _showDialog(
          loc.sql2702SolutionTitle,
          loc.sql2702SolutionContent,
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
      loc.sql2702ExampleCode1,
      loc.sql2702ExampleCode2,
      loc.sql2702ExampleCode3,
      loc.sql2702ExampleCode4,
      loc.sql2702ExampleCode5,
      loc.sql2702ExampleCode6,
    ].where((e) => e.trim().isNotEmpty).toList();

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButtonSql2702",
              onPressed: () {
                _showDialog(
                  loc.sql2702InstructionsTitle,
                  loc.sql2702InstructionsContent,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "infoButtonSql2702",
              onPressed: () {
                _showDialog(
                  loc.sql2702InfoTitle,
                  loc.sql2702InfoContent,
                );
              },
              backgroundColor: const Color(0xFF90CAF9),
              child: const Icon(Icons.info_outline, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonSql2702",
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
                  loc.sql2702ExampleTitle,
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
                  loc.sql2702ExampleOutput,
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
                    hintText: loc.sql2702EnterCodeHint,
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
