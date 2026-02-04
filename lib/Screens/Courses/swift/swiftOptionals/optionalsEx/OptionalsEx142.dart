import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/data/courses/Swift/swiftBasics/sbExModelListZH.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

class OptionalsEx142 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;
  const OptionalsEx142({super.key, required this.title, required this.id, required this.completed});

  @override
  State<OptionalsEx142> createState() => _OptionalsEx142State();
}

class _OptionalsEx142State extends State<OptionalsEx142> {
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
      r'^class\s+\w+\s*{\s*var\s+\w+:\s*\w+\?\s*}\s*let\s+\w+\s*=\s*\w+\(\);\s*if\s*\w+\.\w+\s*!=\s*nil\s*\{\s*print\(.*\);\s*}$',
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
        "You've successfully used optional chaining to access a property safely.\n\n"
        "**Explanation:**\n"
        "- Use optional chaining (`?.`) to access properties of an optional object.\n"
        "- If the object is nil, the chain stops, and the result is nil.\n"
        "- Otherwise, it safely accesses the property.",
        titleColor: Colors.green,
      );
    } else {
      setState(() {
        _failedAttempts++;
        _inputTextColor = Colors.orange;

        if (_failedAttempts == 1) {
          _showDialog(
            "Hint 1",
            "Define a class with an optional property. Use optional chaining to safely access the property.",
          );
        } else if (_failedAttempts == 2) {
          _showDialog(
            "Hint 2",
            "Check if the optional property is nil using optional chaining (`?.`) before using it.",
          );
        } else if (_failedAttempts >= 3) {
          _showDialog(
            "Solution",
            "The correct solution is:\n\n"
            '```swift\n'
            'class Person {\n'
            '    var nickname: String?\n'
            '}\n'
            'let person = Person();\n'
            'person.nickname = "Swiftie";\n'
            'if let name = person.nickname {\n'
            '    print("Nickname: \\(name)");\n'
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
                  "Exercise Instructions",
                  "Welcome to Optional Chaining! 🎉\n\n"
                  "Your task:\n"
                  "1. Define a class `Person` with an optional property `nickname`.\n"
                  "2. Create an instance of `Person` and assign a value to `nickname`.\n"
                  "3. Use optional chaining to safely access and print the `nickname` if it exists.",
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
                    'class Person {\n'
                    '    var nickname: String?\n'
                    '}\n'
                    'let person = Person();\n'
                    'person.nickname = "Swiftie";\n'
                    'if let name = person.nickname {\n'
                    '    print("Nickname: \\(name)");\n'
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
                    'class Person {',
                    'var nickname: String?',
                    '}',
                    'let person = Person();',
                    'person.nickname = "Swiftie";',
                    'if let name = person.nickname {',
                    'print("Nickname: \\(name)");',
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
