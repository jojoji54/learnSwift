import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';

class IfElsEx45 extends StatefulWidget {
  final String title;
  final int id;
  const IfElsEx45({super.key, required this.title, required this.id});

  @override
  State<IfElsEx45> createState() => _IfElsEx45State();
}

class _IfElsEx45State extends State<IfElsEx45> {
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
      r'^var\s+score\s*=\s*\d+;\s*if\s*\(score\s*>=\s*90\)\s*\{\s*print\("The grade is A"\);\s*\}\s*else\s+if\s*\(score\s*>=\s*80\)\s*\{\s*print\("The grade is B"\);\s*\}\s*else\s+if\s*\(score\s*>=\s*70\)\s*\{\s*print\("The grade is C"\);\s*\}\s*else\s+if\s*\(score\s*>=\s*60\)\s*\{\s*print\("The grade is D"\);\s*\}\s*else\s*\{\s*print\("The grade is F"\);\s*\}',
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
        "Well done! You've successfully implemented an `if-else` grading system.\n\n"
        "Explanation:\n"
        "- The program evaluates the `score` variable using `if-else` statements.\n"
        "- Depending on the score, it prints the corresponding grade.",
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
          "Start by declaring a variable: `var score = 85`.",
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          "Hint 2",
          "Use `if` to check conditions like `if (score >= 90)` and add `else-if` for other cases.",
        );
      } else if (_failedAttempts == 3) {
        _showDialog(
          "Hint 3",
          "Complete the structure for all grade ranges:\n"
          "- 90 or above: `Grade A`\n"
          "- 80-89: `Grade B`\n"
          "- 70-79: `Grade C`\n"
          "- 60-69: `Grade D`\n"
          "- Below 60: `Grade F`.",
        );
      } else if (_failedAttempts >= 4) {
        _showDialog(
          "Solution",
          "The correct solution is:\n\n"
          '```swift\n'
          'var score = 85;\n'
          'if (score >= 90) {\n'
          '    print("The grade is A");\n'
          '} else if (score >= 80) {\n'
          '    print("The grade is B");\n'
          '} else if (score >= 70) {\n'
          '    print("The grade is C");\n'
          '} else if (score >= 60) {\n'
          '    print("The grade is D");\n'
          '} else {\n'
          '    print("The grade is F");\n'
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
          FloatingActionButton(
            heroTag: "introButton",
            onPressed: () {
              _showDialog(
                "Exercise Instructions",
                "Welcome to the Grade Evaluator! 🎓\n\n"
                "Your task:\n"
                "1. Declare a variable `score` and assign it an integer value.\n"
                "2. Use `if-else` statements to determine the grade.\n"
                "3. Print the grade.\n\n"
                "Example:\n"
                "var score = 85\n"
                "if (score >= 90) {\n"
                '   print("The grade is A")\n'
                "}\n"
                "else { ... }",
              );
            },
            backgroundColor: const Color(0xFFfbce72),
            child: const Icon(Icons.message, color: Colors.white),
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
          if (_failedAttempts >= 4)
            FloatingActionButton(
              heroTag: "helpButton",
              onPressed: () {
                _showDialog(
                  "Solution",
                  "The correct solution is:\n\n"
                  '```swift\n'
                  'var score = 85;\n'
                  'if (score >= 90) {\n'
                  '    print("The grade is A");\n'
                  '} else if (score >= 80) {\n'
                  '    print("The grade is B");\n'
                  '} else if (score >= 70) {\n'
                  '    print("The grade is C");\n'
                  '} else if (score >= 60) {\n'
                  '    print("The grade is D");\n'
                  '} else {\n'
                  '    print("The grade is F");\n'
                  '}\n'
                  '```',
                  titleColor: Colors.red,
                );
              },
              backgroundColor: Colors.red,
              child: const Icon(Icons.help, color: Colors.white),
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
                        text: "Example:\n",
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                      const TextSpan(
                        text: "1  var ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "score ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= 85;\n2  if (score >= 90) {\n3      print(",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: '"The grade is A"',
                        style: TextStyle(color: Colors.purple),
                      ),
                      const TextSpan(
                        text: ");\n4  } else { ... }",
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
