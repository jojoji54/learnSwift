import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';

class SwitchEx59 extends StatefulWidget {
  final String title;
  final int id;
  const SwitchEx59({super.key, required this.title, required this.id});

  @override
  State<SwitchEx59> createState() => _SwitchEx59State();
}

class _SwitchEx59State extends State<SwitchEx59> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0; // Counter for failed attempts
  Color _inputTextColor = Colors.orange; // Initial text color

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
                fontSize: 16,
                color: Colors.black,
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
      r'^var\s+score\s*=\s*\d+;\s*switch\s*\(score\)\s*\{\s*(case\s*\d+...*\d+:\s*print\(.*\);\s*)+(default:\s*print\(.*\);\s*)\}$',
      multiLine: true,
    );

    final userInput = _controller.text.trim();

    if (codeRegex.hasMatch(userInput)) {
      setState(() {
        _inputTextColor = Colors.green; // Change color if correct
      });
      _controller.clear(); // Clear the text field

      _showDialog(
        "Correct! 🎉",
        "Fantastic! You've implemented a grade evaluator using a `switch` statement.\n\n"
        "**Explanation:**\n"
        "- Use `case` ranges (e.g., `90...100`) to group scores into grades.\n"
        "- The `default` case handles invalid scores.",
        titleColor: Colors.green,
      );
    } else {
      setState(() {
        _failedAttempts++;
        _inputTextColor = Colors.orange; // Keep color if incorrect
      });

      if (_failedAttempts == 1) {
        _showDialog(
          "Hint 1",
          "Start by declaring a `score` variable. Example: `var score = 85`.",
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          "Hint 2",
          "Use `case` ranges in the `switch` statement, like this:\n"
          "case 90...100: print(\"A\")",
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          "Solution",
          "The correct solution is:\n\n"
          '```swift\n'
          'var score = 85;\n'
          'switch score {\n'
          'case 90...100:\n'
          '    print("A");\n'
          'case 80...89:\n'
          '    print("B");\n'
          'case 70...79:\n'
          '    print("C");\n'
          'case 60...69:\n'
          '    print("D");\n'
          'case 0...59:\n'
          '    print("F");\n'
          'default:\n'
          '    print("Invalid score entered.");\n'
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
                  "Challenge Instructions",
                  "Create a grade evaluator using a `switch` statement:\n\n"
                  "1. Declare a `score` variable (integer).\n"
                  "2. Use `case` ranges to match scores to letter grades:\n"
                  "   - `A` for scores 90–100.\n"
                  "   - `B` for scores 80–89.\n"
                  "   - `C` for scores 70–79.\n"
                  "   - `D` for scores 60–69.\n"
                  "   - `F` for scores below 60.\n"
                  "3. Include a `default` case for invalid scores.",
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
                    'switch score {\n'
                    'case 90...100:\n'
                    '    print("A");\n'
                    'case 80...89:\n'
                    '    print("B");\n'
                    'case 70...79:\n'
                    '    print("C");\n'
                    'case 60...69:\n'
                    '    print("D");\n'
                    'case 0...59:\n'
                    '    print("F");\n'
                    'default:\n'
                    '    print("Invalid score entered.");\n'
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
                        text: "= 85;\n2  switch ",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "score {\n",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: '3      case 90...100:\n',
                        style: TextStyle(color: Colors.teal),
                      ),
                      const TextSpan(
                        text: '4          print("A");\n',
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "5      default:\n",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: '6          print("Invalid score entered.");\n',
                        style: TextStyle(color: Colors.red),
                      ),
                      const TextSpan(
                        text: "7  }",
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
