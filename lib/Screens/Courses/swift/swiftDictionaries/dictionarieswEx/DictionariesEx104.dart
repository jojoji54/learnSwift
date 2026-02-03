import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/data/courses/Swift/swiftBasics/sbExModelListEN.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

class DictionariesEx104 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;
  const DictionariesEx104(
      {super.key, required this.title, required this.id, required this.completed});

  @override
  State<DictionariesEx104> createState() => _DictionariesEx104State();
}

class _DictionariesEx104State extends State<DictionariesEx104> {
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
              child: const Text("Close"),
            ),
          ],
        );
      },
    );
  }

  void _validateInput(AllProvider allprovider) async {
    final codeRegex = RegExp(
      r'^var\s+scores\s*=\s*\{.*:.*\};\s*var\s+filteredScores\s*=\s*\{.*:.*for.*in.*if.*>=.*\};\s*filteredScores.forEach\s*\(.*=.*\);\s*print\(.*\);$',
      multiLine: true,
    );

    final userInput = _controller.text.trim();

    if (codeRegex.hasMatch(userInput)) {
      purchaseManagerHive.updatePurchase(widget.id, purchased: true, completed: true);
      allprovider.data[Constant.catIndex].catExercise[widget.id].completed = true;
      allprovider.setData(allprovider.data);
      setState(() {
        _inputTextColor = Colors.green;
      });
      _controller.clear();

      _showDialog(
        "Correct! 🎉",
        "Well done! You've successfully filtered and updated a dictionary in Dart.\n\n"
        "**Explanation:**\n"
        "- Use a `for` loop or `.entries` to filter entries.\n"
        "- Use `.forEach` or a map transformation to update values.",
        titleColor: Colors.green,
      );
    } else {
      setState(() {
        _failedAttempts++;
        _inputTextColor = Colors.orange;
      });

      if (_failedAttempts == 1) {
        _showDialog(
          "Hint 1",
          "Start by declaring a dictionary with names as keys and scores as values. Use a loop to filter out scores < 50.",
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          "Hint 2",
          "After filtering, iterate through the filtered dictionary and add 10 to each score.",
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          "Solution",
          "The correct solution is:\n\n"
          '```dart\n'
          'var scores = {"Alice": 45, "Bob": 55, "Charlie": 70};\n'
          'var filteredScores = {\n'
          '  for (var entry in scores.entries)\n'
          '    if (entry.value >= 50) entry.key: entry.value + 10\n'
          '};\n'
          'print(filteredScores);\n'
          '```',
          titleColor: Colors.red,
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Try again! (${_failedAttempts}/3 attempts)"),
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButtonDictionaries104",
              onPressed: () {
                _showDialog(
                  "Challenge Instructions",
                  "Welcome to the Filtering and Modifying Dictionaries Challenge! 🎉\n\n"
                  "Your task:\n"
                  "1. Create a dictionary with names as keys and scores as values (e.g., `scores = {\"Alice\": 45, \"Bob\": 55}`).\n"
                  "2. Filter out entries where the score is less than 50.\n"
                  "3. Increase each remaining score by 10.\n"
                  "4. Print the updated dictionary.",
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonDictionaries104",
              onPressed: () {
                _validateInput(allProvider);
              },
              backgroundColor: Colors.black,
              child: const Icon(Icons.play_arrow, color: Colors.white),
            ),
          ),
          if (_failedAttempts >= 3 || widget.completed)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                heroTag: "helpButtonDictionaries104",
                onPressed: () {
                  _showDialog(
                    "Solution",
                    "The correct solution is:\n\n"
                    '```dart\n'
                    'var scores = {"Alice": 45, "Bob": 55, "Charlie": 70};\n'
                    'var filteredScores = {\n'
                    '  for (var entry in scores.entries)\n'
                    '    if (entry.value >= 50) entry.key: entry.value + 10\n'
                    '};\n'
                    'print(filteredScores);\n'
                    '```',
                    titleColor: Colors.red,
                  );
                },
                backgroundColor: Colors.red,
                child: const Icon(Icons.help, color: Colors.white),
              ),
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
  'Example:',
  style: const TextStyle(
    fontFamily: 'InconsolataRegular',
    fontSize: 18,
    color: Colors.blueGrey,
  ),
),
const SizedBox(height: 10),
                CodePreview(
                  lines: <String>[
                    'var scores = {"Alice": 45, "Bob": 55, "Charlie": 70};',
                    'var filteredScores = {',
                    '  for (var entry in scores.entries) if (entry.value >= 50) entry.key: entry.value + 10',
                    '};',
                    'print(filteredScores);',
                  ],
                  withLineNumbers: true,
                  language: CodeLanguage.swift,
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
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                    hintText: '"Enter your code here"',
                    hintStyle: TextStyle(color: Colors.grey),
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
