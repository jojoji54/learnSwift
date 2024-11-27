import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';

class IfElsEx40 extends StatefulWidget {
  final String title;
  final int id;
  const IfElsEx40({super.key, required this.title, required this.id});

  @override
  State<IfElsEx40> createState() => _IfElsEx40State();
}

class _IfElsEx40State extends State<IfElsEx40> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0; // Contador de intentos fallidos
  Color _inputTextColor = Colors.orange; // Color inicial del texto

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

  void _validateInput() {
    final codeRegex = RegExp(
      r'^var\s+score\s*=\s*\d+;\s*var\s+participation\s*=\s*(true|false);\s*if\s*\(score\s*>=\s*90\s*&&\s*participation\s*==\s*true\)\s*{\s*print\(.*"A".*\);\s*}\s*else\s*if\s*\(score\s*>=\s*80\)\s*{\s*print\(.*"B".*\);\s*}\s*else\s*if\s*\(score\s*>=\s*70\)\s*{\s*print\(.*"C".*\);\s*}\s*else\s*if\s*\(score\s*>=\s*60\)\s*{\s*print\(.*"D".*\);\s*}\s*else\s*{\s*print\(.*"F".*\);\s*}$',
      multiLine: true,
    );

    final userInput = _controller.text.trim();

    if (codeRegex.hasMatch(userInput)) {
      setState(() {
        _inputTextColor = Colors.green;
      });
      _controller.clear();

      _showDialog(
        "Correct! 🎉",
        "Well done! You've implemented a grading system with multiple conditions.\n\n"
        "**Explanation:**\n"
        "- `A` is assigned for `score >= 90` and `participation == true`.\n"
        "- Other scores are evaluated sequentially in descending order.\n\n"
        "This approach helps to make decisions with multiple criteria.",
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
          "Start by declaring variables: `score` (integer) and `participation` (boolean).",
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          "Hint 2",
          "Use `if` for the highest condition:\n"
          "if score >= 90 && participation == true { ... }\n"
          "and `else if` for other ranges.",
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          "Solution",
          "The correct solution is:\n\n"
          '```swift\n'
          'var score = 85;\n'
          'var participation = true;\n'
          'if score >= 90 && participation == true {\n'
          '    print("A");\n'
          '} else if score >= 80 {\n'
          '    print("B");\n'
          '} else if score >= 70 {\n'
          '    print("C");\n'
          '} else if score >= 60 {\n'
          '    print("D");\n'
          '} else {\n'
          '    print("F");\n'
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
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButton4",
              onPressed: () {
                _showDialog(
                  "Exercise Instructions",
                  "Your task is to implement a grading system:\n\n"
                  "1. Declare variables `score` (integer) and `participation` (boolean).\n"
                  "2. Use `if-else` conditions:\n"
                  "   - `A` for `score >= 90` and `participation == true`.\n"
                  "   - `B` for `score >= 80`.\n"
                  "   - `C` for `score >= 70`.\n"
                  "   - `D` for `score >= 60`.\n"
                  "   - `F` otherwise.\n"
                  "3. Print the grade.",
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButton4",
              onPressed: _validateInput,
              backgroundColor: Colors.black,
              child: const Icon(Icons.play_arrow, color: Colors.white),
            ),
          ),
          if (_failedAttempts >= 3)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                heroTag: "helpButton4",
                onPressed: () {
                  _showDialog(
                    "Solution",
                    "The correct solution is:\n\n"
                    '```swift\n'
                    'var score = 85;\n'
                    'var participation = true;\n'
                    'if score >= 90 && participation == true {\n'
                    '    print("A");\n'
                    '} else if score >= 80 {\n'
                    '    print("B");\n'
                    '} else if score >= 70 {\n'
                    '    print("C");\n'
                    '} else if score >= 60 {\n'
                    '    print("D");\n'
                    '} else {\n'
                    '    print("F");\n'
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
                RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      fontFamily: 'InconsolataRegular',
                      fontSize: 18,
                    ),
                    children: [
                      const TextSpan(
                        text: "1  var ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "score ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= 85;\n2  var ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "participation ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= true;\n3  if (score >= 90 && participation == true) {\n",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "4      print(\"A\");\n",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "5  } else if score >= 80 {\n",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "6      print(\"B\");\n",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "7  } else {\n8      print(\"...\");\n",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "9  }",
                        style: TextStyle(color: Colors.orange),
                      ),
                    ],
                  ),
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
