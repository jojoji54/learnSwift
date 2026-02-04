import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/data/courses/Swift/swiftBasics/sbExModelListZH.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

class FunctionsEx128 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;
  const FunctionsEx128({super.key, required this.title, required this.id, required this.completed});

  @override
  State<FunctionsEx128> createState() => _FunctionsEx128State();
}

class _FunctionsEx128State extends State<FunctionsEx128> {
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
      r'^func\s+\w+\(\s*\w*:\s*String\s*=\s*".*"\)\s*{\s*print\(.*\);\s*}\s*\w+\(\w*:\s*".*"\);$',
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
        "Great work! You've successfully created a function with an optional parameter.\n\n"
        "**Explanation:**\n"
        "- Functions can have default parameter values.\n"
        "- If the parameter is not provided, the default value is used.",
        titleColor: Colors.green,
      );
    } else {
      setState(() {
        _failedAttempts++;
        _inputTextColor = Colors.orange;

        if (_failedAttempts == 1) {
          _showDialog(
            "Hint 1",
            "Define a function with a parameter and a default value (e.g., `name: String = \"Guest\"`).",
          );
        } else if (_failedAttempts == 2) {
          _showDialog(
            "Hint 2",
            "Call the function both with and without passing a value for the parameter.",
          );
        } else if (_failedAttempts >= 3) {
          _showDialog(
            "Solution",
            "The correct solution is:\n\n"
            '```swift\n'
            'func greet(name: String = "Guest") {\n'
            '    print("Hello, \\(name)!");\n'
            '}\n'
            'greet();\n'
            'greet(name: "John");\n'
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
              heroTag: "introButtonFunctions129",
              onPressed: () {
                _showDialog(
                  "Exercise Instructions",
                  "Welcome to Functions with Optional Parameters! 🎉\n\n"
                  "Your task:\n"
                  "1. Define a function named `greet` with a parameter `name` of type `String`.\n"
                  "2. Assign a default value to the parameter (e.g., `\"Guest\"`).\n"
                  "3. Inside the function, use `print` to display a greeting message.\n"
                  "4. Call the function both with and without passing a value for `name`.",
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonFunctions129",
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
                heroTag: "helpButtonFunctions129",
                onPressed: () {
                  _showDialog(
                    "Solution",
                    "The correct solution is:\n\n"
                    '```swift\n'
                    'func greet(name: String = "Guest") {\n'
                    '    print("Hello, \\(name)!");\n'
                    '}\n'
                    'greet();\n'
                    'greet(name: "John");\n'
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
                    'func greet(name: String = "Guest") {',
                    'print("Hello, \\(name)!");',
                    '}',
                    'greet();',
                    'greet(name: "John");',
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
