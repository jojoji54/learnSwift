import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';

import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/data/courses/Swift/swiftBasics/sbExModelListEN.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:learnswift/sharedPreferences/sharedPreferencesData.dart';
import 'package:provider/provider.dart';

class LoopsEx75 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;
  const LoopsEx75(
      {super.key,
      required this.title,
      required this.id,
      required this.completed});

  @override
  State<LoopsEx75> createState() => _LoopsEx75State();
}

class _LoopsEx75State extends State<LoopsEx75> {
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
      r'^for\s+\w+\s+in\s+1...50\s*\{\s*if\s*\(\w+\.contains\("3"\)\s*\|\|\s*\(\w+\s*%\s*3\s*==\s*0\s*\)\s*\{\s*print\(.*"Fizz".*\);\s*\}\s*else\s+if\s*\(\w+\s*%\s*5\s*==\s*0\s*\)\s*\{\s*print\(.*"Buzz".*\);\s*\}\s*else\s+if\s*\(\w+\s*%\s*3\s*==\s*0\s*&&\s*\w+\s*%\s*5\s*==\s*0\s*\)\s*\{\s*print\(.*"FizzBuzz".*\);\s*\}\s*else\s*\{\s*print\(.*\);\s*\}\s*\}$',
      multiLine: true,
    );

    final userInput = _controller.text.trim();

    if (codeRegex.hasMatch(userInput)) {
       purchaseManagerHive.updatePurchase(widget.id,
          purchased: true, completed: true);
      allprovider.data[Constant.catIndex].catExercise[widget.id].completed =
          true;
      allprovider.setData(allprovider.data);
      setState(() {
        _inputTextColor = Colors.green;
      });
      _controller.clear();

      _showDialog(
        "Correct! 🎉",
        "Well done! You've implemented the FizzBuzz challenge with an interesting twist.\n\n"
            "**Explanation:**\n"
            "- Use a loop to iterate from 1 to 50.\n"
            "- Check conditions for multiples and the digit `3`.\n"
            "- Print appropriate results based on conditions.",
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
          "Use a `for` loop to iterate from 1 to 50. Check each number for the required conditions.",
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          "Hint 2",
          "Use `.contains(\"3\")` to check if the number contains the digit `3`.\n"
              "Example:\n"
              "```swift\n"
              "if i.contains(\"3\") { print(\"Fizz\") }\n"
              "```",
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          "Solution",
          "The correct solution is:\n\n"
              '```swift\n'
              'for i in 1...50 {\n'
              '    if String(i).contains("3") || i % 3 == 0 {\n'
              '        print("Fizz");\n'
              '    } else if i % 5 == 0 {\n'
              '        print("Buzz");\n'
              '    } else if i % 3 == 0 && i % 5 == 0 {\n'
              '        print("FizzBuzz");\n'
              '    } else {\n'
              '        print(i);\n'
              '    }\n'
              '}\n'
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
              heroTag: "introButton17",
              onPressed: () {
                _showDialog(
                  "Challenge Instructions",
                  "Welcome to the FizzBuzz Challenge! 🎉\n\n"
                      "Your task:\n"
                      "1. Print numbers from 1 to 50.\n"
                      "2. For multiples of 3, print `Fizz`.\n"
                      "3. For multiples of 5, print `Buzz`.\n"
                      "4. For multiples of both 3 and 5, print `FizzBuzz`.\n"
                      "5. If the number contains the digit `3`, print `Fizz` regardless of other rules.",
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButton17",
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
                heroTag: "helpButton17",
                onPressed: () {
                  _showDialog(
                    "Solution",
                    "The correct solution is:\n\n"
                        '```swift\n'
                        'for i in 1...50 {\n'
                        '    if String(i).contains("3") || i % 3 == 0 {\n'
                        '        print("Fizz");\n'
                        '    } else if i % 5 == 0 {\n'
                        '        print("Buzz");\n'
                        '    } else if i % 3 == 0 && i % 5 == 0 {\n'
                        '        print("FizzBuzz");\n'
                        '    } else {\n'
                        '        print(i);\n'
                        '    }\n'
                        '}\n'
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
                    'for i in 1...50 {',
                    'if String(i).contains("3") || i % 3 == 0 {',
                    'print("Fizz");',
                    '} else if i % 5 == 0 {',
                    'print("Buzz");',
                    '} else { ... }',
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
