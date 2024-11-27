import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';

class IfElsEx42 extends StatefulWidget {
  final String title;
  final int id;
  const IfElsEx42({super.key, required this.title, required this.id});

  @override
  State<IfElsEx42> createState() => _IfElsEx42State();
}

class _IfElsEx42State extends State<IfElsEx42> {
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
      r'^var\s+gpa\s*=\s*\d\.\d;\s*var\s+hasRecommendation\s*=\s*(true|false);\s*var\s+isExtraCurricularActive\s*=\s*(true|false);\s*if\s*\(gpa\s*>=\s*3\.5\s*&&\s*hasRecommendation\s*==\s*true\s*&&\s*isExtraCurricularActive\s*==\s*true\)\s*{\s*print\(.*"Admitted".*\);\s*}\s*else\s*{\s*print\(.*"Not Admitted".*\);\s*}$',
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
        "Well done! You've created an admission evaluation system.\n\n"
        "**Explanation:**\n"
        "- `gpa >= 3.5` ensures academic eligibility.\n"
        "- `hasRecommendation` checks for recommendation letters.\n"
        "- `isExtraCurricularActive` ensures extracurricular participation.\n\n"
        "Only students meeting all these criteria are admitted.",
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
          "Start by declaring variables:\n"
          "- `var gpa = 3.8`\n"
          "- `var hasRecommendation = true`\n"
          "- `var isExtraCurricularActive = true`",
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          "Hint 2",
          "Use `if` to evaluate the conditions. Example:\n"
          '```swift\n'
          'if gpa >= 3.5 && hasRecommendation == true && isExtraCurricularActive == true {\n'
          '    print("Admitted");\n'
          '} else {\n'
          '    print("Not Admitted");\n'
          '}\n'
          '```',
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          "Solution",
          "Here is the correct solution:\n\n"
          '```swift\n'
          'var gpa = 3.8;\n'
          'var hasRecommendation = true;\n'
          'var isExtraCurricularActive = true;\n'
          'if gpa >= 3.5 && hasRecommendation == true && isExtraCurricularActive == true {\n'
          '    print("Admitted");\n'
          '} else {\n'
          '    print("Not Admitted");\n'
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
                  "Create a program to evaluate university admission based on:\n\n"
                  "1. `gpa` (e.g., `3.8`) must be >= 3.5.\n"
                  "2. `hasRecommendation` must be `true`.\n"
                  "3. `isExtraCurricularActive` must be `true`.\n\n"
                  "If all criteria are met, print `Admitted`. Otherwise, print `Not Admitted`.",
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
                    "Here is the correct solution:\n\n"
                    '```swift\n'
                    'var gpa = 3.8;\n'
                    'var hasRecommendation = true;\n'
                    'var isExtraCurricularActive = true;\n'
                    'if gpa >= 3.5 && hasRecommendation == true && isExtraCurricularActive == true {\n'
                    '    print("Admitted");\n'
                    '} else {\n'
                    '    print("Not Admitted");\n'
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
                        text: "gpa ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= 3.8;\n2  var ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "hasRecommendation ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= true;\n3  var ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "isExtraCurricularActive ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= true;\n4  if gpa >= 3.5 && hasRecommendation == true && isExtraCurricularActive == true {\n",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "5    print(\"Admitted\");\n6  } else {\n7    print(\"Not Admitted\");\n8  }",
                        style: TextStyle(color: Colors.grey),
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
