import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';

class IfElsEx43 extends StatefulWidget {
  final String title;
  final int id;
  const IfElsEx43({super.key, required this.title, required this.id});

  @override
  State<IfElsEx43> createState() => _IfElsEx43State();
}

class _IfElsEx43State extends State<IfElsEx43> {
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

  void _validateInput() {
    final codeRegex = RegExp(
      r'^var\s+score\s*=\s*\d+;\s*if\s*\(score\s*>=\s*90\)\s*{\s*print\(.*"A".*\);\s*}\s*else\s+if\s*\(score\s*>=\s*80\)\s*{\s*print\(.*"B".*\);\s*}\s*else\s+if\s*\(score\s*>=\s*70\)\s*{\s*print\(.*"C".*\);\s*}\s*else\s+if\s*\(score\s*>=\s*60\)\s*{\s*print\(.*"D".*\);\s*}\s*else\s*{\s*print\(.*"F".*\);\s*}$',
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
        "Great! You've successfully implemented a grade evaluation system.\n\n"
        "**Explanation:**\n"
        "- Each `if` or `else if` checks if the `score` falls within a range.\n"
        "- Based on the score, the corresponding grade is printed.\n\n"
        "This structure is efficient for evaluating multiple conditions in decision-making scenarios.",
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
          "Start by declaring a `score` variable. Example: `var score = 85`.",
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          "Hint 2",
          "Use `if-else if-else` statements to compare `score` values and print grades.",
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          "Solution",
          "The correct solution is:\n\n"
          '```swift\n'
          'var score = 85;\n'
          'if score >= 90 {\n'
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
              heroTag: "introButton",
              onPressed: () {
                _showDialog(
                  "Exercise Instructions",
                  "Create a program that evaluates a student's grade based on their `score`:\n\n"
                  "1. If `score` is >= 90, print `A`.\n"
                  "2. If `score` is >= 80, print `B`.\n"
                  "3. If `score` is >= 70, print `C`.\n"
                  "4. If `score` is >= 60, print `D`.\n"
                  "5. If `score` is below 60, print `F`.",
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButton",
              onPressed: _validateInput,
              backgroundColor: Colors.black,
              child: const Icon(Icons.play_arrow, color: Colors.white),
            ),
          ),
          if (_failedAttempts >= 3)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                heroTag: "helpButton",
                onPressed: () {
                  _showDialog(
                    "Solution",
                    "The correct solution is:\n\n"
                    '```swift\n'
                    'var score = 85;\n'
                    'if score >= 90 {\n'
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
                        text: "= 85;\n2  if (score >= 90) {\n3    print(\"A\");\n",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "4  } else if (score >= 80) {\n5    print(\"B\");\n",
                        style: TextStyle(color: Colors.purple),
                      ),
                      const TextSpan(
                        text: "6  } else if (score >= 70) {\n7    print(\"C\");\n",
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                      const TextSpan(
                        text: "8  } else if (score >= 60) {\n9    print(\"D\");\n",
                        style: TextStyle(color: Colors.teal),
                      ),
                      const TextSpan(
                        text: "10  } else {\n11    print(\"F\");\n12  }",
                        style: TextStyle(color: Colors.red),
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
