import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/data/courses/Swift/swiftBasics/sbExModelListZH.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

class OptionalsEx146 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;
  const OptionalsEx146({super.key, required this.title, required this.id, required this.completed});

  @override
  State<OptionalsEx146> createState() => _OptionalsEx146State();
}

class _OptionalsEx146State extends State<OptionalsEx146> {
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
      r'^var\s+data\s*=\s*\[".*":\s*\[".*":\s*\d+\]\];\s*if\s+let\s+innerDict\s*=\s*data\[".*"]\s*,\s*let\s+value\s*=\s*innerDict\[".*"]\s*{\s*print\(.*\);\s*}\s*else\s*{\s*print\(.*\);\s*}$',
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
        "You've successfully handled nested optionals in dictionaries.\n\n"
        "**Explanation:**\n"
        "- Use optional chaining to safely access values in a nested dictionary.\n"
        "- Use optional binding (`if let`) to unwrap the nested value and print appropriate messages.",
        titleColor: Colors.green,
      );
    } else {
      setState(() {
        _failedAttempts++;
        _inputTextColor = Colors.orange;

        if (_failedAttempts == 1) {
          _showDialog(
            "Hint 1",
            "Define a nested dictionary. Example:\n"
            '`var data = ["person": ["age": 30]]`.',
          );
        } else if (_failedAttempts == 2) {
          _showDialog(
            "Hint 2",
            "Use optional binding to unwrap the outer dictionary and then the inner dictionary. Example:\n"
            '```swift\n'
            'if let innerDict = data["person"], let value = innerDict["age"] {\n'
            '    print("Value: \\(value)");\n'
            '} else {\n'
            '    print("No value found");\n'
            '}\n'
            '```',
          );
        } else if (_failedAttempts >= 3) {
          _showDialog(
            "Solution",
            "The correct solution is:\n\n"
            '```swift\n'
            'var data = ["person": ["age": 30]];\n'
            'if let innerDict = data["person"], let value = innerDict["age"] {\n'
            '    print("Value: \\(value)");\n'
            '} else {\n'
            '    print("No value found");\n'
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
              heroTag: "introButtonOptionals146",
              onPressed: () {
                _showDialog(
                  "Challenge Instructions",
                  "Welcome to the Nested Dictionaries Optionals Challenge! 🎉\n\n"
                  "Your task:\n"
                  "1. Create a nested dictionary (e.g., `var data = [\"person\": [\"age\": 30]]`).\n"
                  "2. Use `if let` to safely access the inner dictionary and its values.\n"
                  "3. Print appropriate messages for existing and missing values.",
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonOptionals146",
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
                heroTag: "helpButtonOptionals146",
                onPressed: () {
                  _showDialog(
                    "Solution",
                    "The correct solution is:\n\n"
                    '```swift\n'
                    'var data = ["person": ["age": 30]];\n'
                    'if let innerDict = data["person"], let value = innerDict["age"] {\n'
                    '    print("Value: \\(value)");\n'
                    '} else {\n'
                    '    print("No value found");\n'
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
                    'var data = ["person": ["age": 30]];',
                    'innerDict = data["person"],',
                    'value = innerDict["age"] {',
                    'print("Value: \\(value)");',
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
