import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/data/courses/Swift/swiftBasics/sbExModelListZH.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

class OptionalsEx141 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;
  const OptionalsEx141({super.key, required this.title, required this.id, required this.completed});

  @override
  State<OptionalsEx141> createState() => _OptionalsEx141State();
}

class _OptionalsEx141State extends State<OptionalsEx141> {
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
      r'^func\s+\w+\(\w+:\s*\w+\?\)\s*{\s*guard\s+let\s+\w+\s*=\s*\w+\s*else\s*\{\s*print\(.*\);\s*return\s*}\s*print\(.*\);\s*}$',
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
        "You've successfully used `guard` to safely unwrap an optional.\n\n"
        "**Explanation:**\n"
        "- Use `guard` to safely unwrap an optional.\n"
        "- If the value is nil, handle it inside the `else` block (e.g., by printing an error message).\n"
        "- If the value exists, proceed with using it.",
        titleColor: Colors.green,
      );
    } else {
      setState(() {
        _failedAttempts++;
        _inputTextColor = Colors.orange;

        if (_failedAttempts == 1) {
          _showDialog(
            "Hint 1",
            "Define a function that takes an optional parameter. Use `guard` to unwrap the value safely.",
          );
        } else if (_failedAttempts == 2) {
          _showDialog(
            "Hint 2",
            "In the `else` block of `guard`, print a message and use `return` to exit the function.",
          );
        } else if (_failedAttempts >= 3) {
          _showDialog(
            "Solution",
            "The correct solution is:\n\n"
            '```swift\n'
            'func greet(name: String?) {\n'
            '    guard let unwrappedName = name else {\n'
            '        print("No name provided!");\n'
            '        return\n'
            '    }\n'
            '    print("Hello, \\(unwrappedName)!");\n'
            '}\n'
            'greet(name: "Alice");\n'
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
              heroTag: "introButtonOptionals141",
              onPressed: () {
                _showDialog(
                  "Exercise Instructions",
                  "Welcome to Safely Unwrapping Optionals! 🎉\n\n"
                  "Your task:\n"
                  "1. Define a function that takes an optional string as a parameter.\n"
                  "2. Use `guard` to safely unwrap the value.\n"
                  "3. If the value is nil, print a message and exit the function.\n"
                  "4. If the value exists, print a greeting with the unwrapped value.",
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonOptionals141",
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
                heroTag: "helpButtonOptionals141",
                onPressed: () {
                  _showDialog(
                    "Solution",
                    "The correct solution is:\n\n"
                    '```swift\n'
                    'func greet(name: String?) {\n'
                    '    guard let unwrappedName = name else {\n'
                    '        print("No name provided!");\n'
                    '        return\n'
                    '    }\n'
                    '    print("Hello, \\(unwrappedName)!");\n'
                    '}\n'
                    'greet(name: "Alice");\n'
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
                    'func greet(name: String?) {',
                    'guard let unwrappedName = name else {',
                    'print("No name provided!");',
                    'return',
                    '}',
                    'print("Hello, \\(unwrappedName)!");',
                    '}',
                    'greet(name: "Alice");',
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
