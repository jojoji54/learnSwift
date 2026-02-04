import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/data/courses/Swift/swiftBasics/sbExModelListZH.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

class FunctionsEx126 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;
  const FunctionsEx126({super.key, required this.title, required this.id, required this.completed});

  @override
  State<FunctionsEx126> createState() => _FunctionsEx126State();
}

class _FunctionsEx126State extends State<FunctionsEx126> {
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
      r'^func\s+\w+\(.*\)\s*{\s*print\(.*\);\s*}\s*func\s+\w+\(.*\)\s*{\s*return\s+\w+;\s*}\s*print\(\w+\(.*\)\);$',
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
        "Great job! You've successfully explored function overloading.\n\n"
        "**Explanation:**\n"
        "- Function overloading allows multiple functions with the same name but different parameters or return types.\n"
        "- This enables flexibility in calling the appropriate function based on the provided arguments.",
        titleColor: Colors.green,
      );
    } else {
      setState(() {
        _failedAttempts++;
        _inputTextColor = Colors.orange;

        if (_failedAttempts == 1) {
          _showDialog(
            "Hint 1",
            "Define two functions with the same name but different parameter lists.",
          );
        } else if (_failedAttempts == 2) {
          _showDialog(
            "Hint 2",
            "One function should perform a print operation, and the other should return a value.",
          );
        } else if (_failedAttempts >= 3) {
          _showDialog(
            "Solution",
            "The correct solution is:\n\n"
            '```swift\n'
            'func describe(item: String) {\n'
            '    print("Item: \\(item)");\n'
            '}\n\n'
            'func describe(item: String, count: Int) -> String {\n'
            '    return "Item: \\(item), Count: \\(count)";\n'
            '}\n\n'
            'describe(item: "Book");\n'
            'print(describe(item: "Pen", count: 5));\n'
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
              heroTag: "introButtonFunctions127",
              onPressed: () {
                _showDialog(
                  "Exercise Instructions",
                  "Welcome to Function Overloading! 🎉\n\n"
                  "Your task:\n"
                  "1. Define two functions with the same name `describe`.\n"
                  "2. One function should take a single parameter and print a message.\n"
                  "3. The second function should take two parameters and return a string combining them.\n"
                  "4. Call both functions and display their outputs.",
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonFunctions127",
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
                heroTag: "helpButtonFunctions127",
                onPressed: () {
                  _showDialog(
                    "Solution",
                    "The correct solution is:\n\n"
                    '```swift\n'
                    'func describe(item: String) {\n'
                    '    print("Item: \\(item)");\n'
                    '}\n\n'
                    'func describe(item: String, count: Int) -> String {\n'
                    '    return "Item: \\(item), Count: \\(count)";\n'
                    '}\n\n'
                    'describe(item: "Book");\n'
                    'print(describe(item: "Pen", count: 5));\n'
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
                    'func describe(item: String) {',
                    'print("Item: \\(item)");',
                    '}',
                    'func describe(item: String, count: Int) -> String {',
                    'return "Item: \\(item), Count: \\(count)";',
                    '}',
                    'describe(item: "Book");',
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
