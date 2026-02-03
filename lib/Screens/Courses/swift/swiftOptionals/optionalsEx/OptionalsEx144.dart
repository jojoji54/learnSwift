import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/data/courses/Swift/swiftBasics/sbExModelListEN.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

class OptionalsEx144 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;
  const OptionalsEx144({super.key, required this.title, required this.id, required this.completed});

  @override
  State<OptionalsEx144> createState() => _OptionalsEx144State();
}

class _OptionalsEx144State extends State<OptionalsEx144> {
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

  void _validateInput(AllProvider allprovider) {
    final codeRegex = RegExp(
      r'^let\s+\w+\s*:\s*\[String:\s*\[Int\]\?\]\?\s*=\s*\["\w+"\s*:\s*\[\d+,\s*\d+\]\];\s*if\s+let\s+\w+\s*=\s*\w+\?\["\w+"\]\?\{\s*print\(.*\);\s*}$',
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
        "You've successfully accessed a nested dictionary with optionals.\n\n"
        "**Explanation:**\n"
        "- Define a nested optional dictionary (e.g., `[String: [Int]?]?`).\n"
        "- Use optional chaining and `if let` to safely access nested values.\n"
        "- Print the unwrapped value.",
        titleColor: Colors.green,
      );
    } else {
      setState(() {
        _failedAttempts++;
        _inputTextColor = Colors.orange;

        if (_failedAttempts == 1) {
          _showDialog(
            "Hint 1",
            "Define a nested optional dictionary. Example:\n"
            '```swift\n'
            'let nestedDict: [String: [Int]?]? = ["numbers": [1, 2, 3]];\n'
            '```',
          );
        } else if (_failedAttempts == 2) {
          _showDialog(
            "Hint 2",
            "Use optional chaining and `if let` to access the value safely.\n"
            'Example:\n'
            '```swift\n'
            'if let numbers = nestedDict?["numbers"] {\n'
            '    print(numbers);\n'
            '}\n'
            '```',
          );
        } else if (_failedAttempts >= 3) {
          _showDialog(
            "Solution",
            "The correct solution is:\n\n"
            '```swift\n'
            'let nestedDict: [String: [Int]?]? = ["numbers": [1, 2, 3]];\n'
            'if let numbers = nestedDict?["numbers"] {\n'
            '    print("Unwrapped Numbers: \\(numbers)");\n'
            '}\n'
            '```',
            titleColor: Colors.red,
          );
        }
      });
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
              heroTag: "introButtonOptionals144",
              onPressed: () {
                _showDialog(
                  "Challenge Instructions",
                  "Welcome to Nested Dictionaries with Optionals Challenge! 🎉\n\n"
                  "Your task:\n"
                  "1. Define a nested optional dictionary: `[String: [Int]?]?`.\n"
                  "2. Use optional chaining to safely access a value by its key.\n"
                  "3. Print the unwrapped value.",
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonOptionals144",
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
                heroTag: "helpButtonOptionals144",
                onPressed: () {
                  _showDialog(
                    "Solution",
                    "The correct solution is:\n\n"
                    '```swift\n'
                    'let nestedDict: [String: [Int]?]? = ["numbers": [1, 2, 3]];\n'
                    'if let numbers = nestedDict?["numbers"] {\n'
                    '    print("Unwrapped Numbers: \\(numbers)");\n'
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
                    'let nestedDict: [String: [Int]?]? = ["numbers": [1, 2, 3]];',
                    'if let numbers = nestedDict?["numbers"] {',
                    'print(numbers);',
                    '}',
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
