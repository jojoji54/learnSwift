import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/data/courses/Swift/swiftBasics/sbExModelListZH.dart';
import 'package:learnswift/provider/allprovider.dart';

import 'package:learnswift/sharedPreferences/sharedPreferencesData.dart';
import 'package:provider/provider.dart';

class LoopsEx73 extends StatefulWidget {
    final String title;
  final int id;
  final bool completed;
  const LoopsEx73({super.key, required this.title, required this.id, required this.completed});

  @override
  State<LoopsEx73> createState() => _LoopsEx73State();
}

class _LoopsEx73State extends State<LoopsEx73> {
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

   void _validateInput(AllProvider allprovider)  {
    final codeRegex = RegExp(
      r'^let\s+numbers\s*=\s*\[.*\];\s*var\s+target\s*=\s*\d+;\s*var\s+count\s*=\s*0;\s*for\s+\w+\s+in\s+numbers\s*\{\s*if\s+\w+\s*==\s*target\s*\{\s*count\s*\+=\s*1;\s*\}\s*}\s*print\(.*\);$',
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
        "Correct! 🎉",
        "Great! You've successfully counted occurrences of a number in an array.\n\n"
            "**Explanation:**\n"
            "- Initialize a counter variable.\n"
            "- Use a loop to iterate over the array and compare each element to the target number.\n"
            "- Increment the counter if there's a match.\n"
            "- Print the final count after the loop.",
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
          "Start by declaring an array: `let numbers = [3, 5, 7, 3, 8]` and a target number: `let target = 3`.",
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          "Hint 2",
          "Use a `for` loop to iterate over the array. Use an `if` statement to check if an element matches the target number.",
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          "Solution",
          "The correct solution is:\n\n"
              '```swift\n'
              'let numbers = [3, 5, 7, 3, 8];\n'
              'var target = 3;\n'
              'var count = 0;\n'
              'for num in numbers {\n'
              '    if num == target {\n'
              '        count += 1;\n'
              '    }\n'
              '}\n'
              'print("The number \\(target) appears \\(count) times.");\n'
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
              heroTag: "introButton15",
              onPressed: () {
                _showDialog(
                  "Challenge Instructions",
                  "Welcome to the Count Occurrences Challenge! 🎉\n\n"
                      "Your task:\n"
                      "1. Allow users to define an array of integers, e.g., `[1, 2, 3, 2, 4]`.\n"
                      "2. Allow users to specify a target number.\n"
                      "3. Count the occurrences of the target number in the array using a loop.\n"
                      "4. Print the count, e.g., `The number 2 appears 2 times.`.\n\n"
                      "Tip: Use a `for` loop to iterate over the array and a counter to count matches.\n",
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButton15",
              onPressed: () {
                _validateInput(allProvider);
              },
              backgroundColor: Colors.black,
              child: const Icon(Icons.play_arrow, color: Colors.white),
            ),
          ),
           if (_failedAttempts >= 3 || widget.completed )
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                heroTag: "helpButton15",
                onPressed: () {
                  _showDialog(
                    "Solution",
                    "The correct solution is:\n\n"
                        '```swift\n'
                        'let numbers = [3, 5, 7, 3, 8];\n'
                        'var target = 3;\n'
                        'var count = 0;\n'
                        'for num in numbers {\n'
                        '    if num == target {\n'
                        '        count += 1;\n'
                        '    }\n'
                        '}\n'
                        'print("The number \\(target) appears \\(count) times.");\n'
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
                    'let numbers = [3, 5, 7, 3, 8];',
                    'var target = 3;',
                    'var count = 0;',
                    'for num in numbers {',
                    'if num == target {',
                    'count += 1;',
                    '}',
                    '}',
                    'print("The number \\(target) appears \\(count) times.");',
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
