import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/data/courses/Swift/swiftBasics/sbExModelListEN.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

class OptionalsEx143 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;
  const OptionalsEx143({super.key, required this.title, required this.id, required this.completed});

  @override
  State<OptionalsEx143> createState() => _OptionalsEx143State();
}

class _OptionalsEx143State extends State<OptionalsEx143> {
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
      r'^if\s+let\s+\w+\s*=\s*\w+\?\.(compactMap\s*{\s*\w+\s*in\s*\w+\?.compactMap\s*{\s*\w+\s*in\s*\w+\s*}\s*})\s*{\s*print\(.*\);\s*}$',
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
        "You've successfully flattened a nested optional array using `compactMap`.\n\n"
        "**Explanation:**\n"
        "- Use `compactMap` to unwrap optional arrays.\n"
        "- Nested `compactMap` calls handle inner optional arrays.\n"
        "- The result is a single-level array without nil values.",
        titleColor: Colors.green,
      );
    } else {
      setState(() {
        _failedAttempts++;
        _inputTextColor = Colors.orange;

        if (_failedAttempts == 1) {
          _showDialog(
            "Hint 1",
            "Use `compactMap` twice: once for the outer array and once for the inner array.",
          );
        } else if (_failedAttempts == 2) {
          _showDialog(
            "Hint 2",
            "Define a nested optional array. Example:\n"
            '```swift\n'
            'let nestedArray: [[Int?]?] = [[1, nil, 2], nil, [3, 4]];\n'
            '```',
          );
        } else if (_failedAttempts >= 3) {
          _showDialog(
            "Solution",
            "The correct solution is:\n\n"
            '```swift\n'
            'let nestedArray: [[Int?]?] = [[1, nil, 2], nil, [3, 4]];\n'
            'if let unwrappedArray = nestedArray?.compactMap { nestedElement in \n'
            '    nestedElement?.compactMap { element in element }\n'
            '} {\n'
            '    print("Unwrapped Array: \\(unwrappedArray)");\n'
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
              heroTag: "introButtonOptionals142",
              onPressed: () {
                _showDialog(
                  "Challenge Instructions",
                  "Welcome to Nested Optionals Challenge! 🎉\n\n"
                  "Your task:\n"
                  "1. Define a nested optional array (e.g., `[[Int?]?]`).\n"
                  "2. Use `compactMap` to flatten and unwrap the array.\n"
                  "3. Print the resulting array.",
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonOptionals142",
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
                heroTag: "helpButtonOptionals142",
                onPressed: () {
                  _showDialog(
                    "Solution",
                    "The correct solution is:\n\n"
                    '```swift\n'
                    'let nestedArray: [[Int?]?] = [[1, nil, 2], nil, [3, 4]];\n'
                    'if let unwrappedArray = nestedArray?.compactMap { nestedElement in \n'
                    '    nestedElement?.compactMap { element in element }\n'
                    '} {\n'
                    '    print("Unwrapped Array: \\(unwrappedArray)");\n'
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
                    'let nestedArray: [[Int?]?] = [[1, nil, 2], nil, [3, 4]];',
                    'if let unwrappedArray = nestedArray?.compactMap { nestedElement in',
                    'nestedElement?.compactMap { element in element }',
                    '} {',
                    'print(unwrappedArray);',
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
