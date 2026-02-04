import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/data/courses/Swift/swiftBasics/sbExModelListZH.dart';
import 'package:learnswift/provider/allprovider.dart';

import 'package:learnswift/sharedPreferences/sharedPreferencesData.dart';
import 'package:provider/provider.dart';

class IfElsEx45 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;
  const IfElsEx45({super.key, required this.title, required this.id, required this.completed});

  @override
  State<IfElsEx45> createState() => _IfElsEx45State();
}

class _IfElsEx45State extends State<IfElsEx45> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.orange;

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
                fontStyle: FontStyle.normal,
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

  void _validateInput(AllProvider allprovider)  {
    final codeRegex = RegExp(
      r'^var\s+score\s*=\s*\d+;\s*if\s*\(score\s*>=\s*90\)\s*\{\s*print\("The grade is A"\);\s*\}\s*else\s+if\s*\(score\s*>=\s*80\)\s*\{\s*print\("The grade is B"\);\s*\}\s*else\s+if\s*\(score\s*>=\s*70\)\s*\{\s*print\("The grade is C"\);\s*\}\s*else\s+if\s*\(score\s*>=\s*60\)\s*\{\s*print\("The grade is D"\);\s*\}\s*else\s*\{\s*print\("The grade is F"\);\s*\}',
      multiLine: true,
    );

    final userInput = _controller.text.trim();

    if (codeRegex.hasMatch(userInput)) {
         purchaseManagerHive.updatePurchase(widget.id,
          purchased: true, completed: true);
      final idx = allprovider.data[Constant.catIndex].catExercise
          .indexWhere((e) => e.id == widget.id);
      if (idx != -1) {
        allprovider.data[Constant.catIndex].catExercise[idx].completed = true;
      }
      allprovider.setData(allprovider.data);
      setState(() {
        _inputTextColor = Colors.green;
      });
      _controller.clear();

      _showDialog(
        AppLocalizations.of(context)!.exercise45CorrectTitle,
        AppLocalizations.of(context)!.exercise45CorrectContent,
        titleColor: Colors.green,
      );
    } else {
      setState(() {
        _failedAttempts++;
        _inputTextColor = Colors.orange;
      });

      if (_failedAttempts == 1) {
        _showDialog(
          AppLocalizations.of(context)!.exercise45Hint1Title,
          AppLocalizations.of(context)!.exercise45Hint1Content,
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          AppLocalizations.of(context)!.exercise45Hint2Title,
          AppLocalizations.of(context)!.exercise45Hint2Content,
        );
      } else if (_failedAttempts == 3) {
        _showDialog(
          AppLocalizations.of(context)!.exercise45Hint3Title,
          AppLocalizations.of(context)!.exercise45Hint3Content,
        );
      } else if (_failedAttempts >= 4) {
        _showDialog(
          AppLocalizations.of(context)!.exercise45SolutionTitle,
          AppLocalizations.of(context)!
              .exercise45SolutionContent
              .replaceAll('#', '{')
              .replaceAll('º', '}'),
          titleColor: Colors.red,
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              AppLocalizations.of(context)!
                  .tryAgain(_failedAttempts.toString()),
            ),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
      final allProvider = Provider.of<AllProvider>(context);
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "introButton",
            onPressed: () {
              _showDialog(
                AppLocalizations.of(context)!.exercise45IntroTitle,
                AppLocalizations.of(context)!.exercise45IntroContent,
              );
            },
            backgroundColor: const Color(0xFFfbce72),
            child: const Icon(Icons.message, color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButton",
             onPressed: () {
                _validateInput(allProvider);
              },
              backgroundColor: Colors.black,
              child: const Icon(Icons.play_arrow, color: Colors.white),
            ),
          ),
          if (_failedAttempts >= 4 || widget.completed )
            FloatingActionButton(
              heroTag: "helpButton",
              onPressed: () {
                _showDialog(
                  AppLocalizations.of(context)!.exercise45SolutionTitle,
                  AppLocalizations.of(context)!
                      .exercise45SolutionContent
                      .replaceAll('#', '{')
                      .replaceAll('º', '}'),
                  titleColor: Colors.red,
                );
              },
              backgroundColor: Colors.red,
              child: const Icon(Icons.help, color: Colors.white),
            ),
        ],
      ),
      body: FadeIn(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 1000,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppLocalizations.of(context)!
                      .exercise45Example
                      .replaceAll('#', '{')
                      .replaceAll('º', '}'),
                  style: const TextStyle(
                    fontFamily: 'InconsolataRegular',
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: _controller,
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  style: TextStyle(
                    fontFamily: 'InconsolataRegular',
                    fontSize: 18,
                    color: _inputTextColor,
                  ),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 8),
                    hintText: AppLocalizations.of(context)!.exercise45Hint,
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
