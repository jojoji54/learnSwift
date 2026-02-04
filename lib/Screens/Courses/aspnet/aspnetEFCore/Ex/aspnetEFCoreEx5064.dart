import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

import '../../../../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';

class AspnetEFCoreEx5064 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;

  const AspnetEFCoreEx5064({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<AspnetEFCoreEx5064> createState() => _AspnetEFCoreEx5064State();
}

class _AspnetEFCoreEx5064State extends State<AspnetEFCoreEx5064> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.grey;

  String _t(String s) => s.replaceAll('@', '{').replaceAll('&', '}');

  bool _isValid5064(String code) {
    final normalized = code.trim();

    final required = <RegExp>[
      RegExp(r"MapPost", caseSensitive: false, multiLine: true),
      RegExp(r"Todos\.Add", caseSensitive: false, multiLine: true),
      RegExp(r"SaveChangesAsync", caseSensitive: false, multiLine: true),
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
    final ok = _isValid5064(userInput);
    setState(() => _inputTextColor = ok ? Colors.green : Colors.red);
  }

  void _submit(AllProvider allprovider) {
    final userInput = _controller.text;
    final loc = AppLocalizations.of(context)!;

    if (_isValid5064(userInput)) {
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
        _t(loc.aspnetCorrectTitle),
        _t(loc.aspnetCorrectExplanation),
        titleColor: Colors.green,
      );
    } else {
      setState(() {
        _failedAttempts++;
        _inputTextColor = Colors.red;
      });

      if (_failedAttempts == 1) {
        _showDialog(
          _t(loc.aspnet5064HintTitle1),
          _t(loc.aspnet5064HintContent1),
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          _t(loc.aspnet5064HintTitle2),
          _t(loc.aspnet5064HintContent2),
        );
      } else {
        _showDialog(
          _t(loc.aspnet5064SolutionTitle),
          _t(loc.aspnet5064SolutionContent),
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
      _t(loc.aspnet5064ExampleCode1),
      _t(loc.aspnet5064ExampleCode2),
      _t(loc.aspnet5064ExampleCode3),
      _t(loc.aspnet5064ExampleCode4),
      _t(loc.aspnet5064ExampleCode5),
      _t(loc.aspnet5064ExampleCode6),
    ].where((e) => e.trim().isNotEmpty).toList();

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: 'introButtonAspnet5064',
              onPressed: () {
                _showDialog(
                  _t(loc.aspnet5064InstructionsTitle),
                  _t(loc.aspnet5064InstructionsContent),
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: 'infoButtonAspnet5064',
              onPressed: () {
                _showDialog(
                  _t(loc.aspnet5064InfoTitle),
                  _t(loc.aspnet5064InfoContent),
                );
              },
              backgroundColor: const Color(0xFF90CAF9),
              child: const Icon(Icons.info_outline, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: 'runButtonAspnet5064',
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
                  _t(loc.aspnet5064ExampleTitle),
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
                  language: CodeLanguage.cpp,
                ),
                const SizedBox(height: 10),
                Text(
                  _t(loc.aspnet5064ExampleOutput),
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
                  maxLines: 6,
                  style: TextStyle(
                    color: _inputTextColor,
                    fontFamily: 'InconsolataRegular',
                  ),
                  decoration: InputDecoration(
                    hintText: _t(loc.aspnet5064EnterCodeHint),
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
