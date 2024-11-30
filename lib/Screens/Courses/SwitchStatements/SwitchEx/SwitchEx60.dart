import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';

class SwitchEx60 extends StatefulWidget {
  final String title;
  final int id;
  const SwitchEx60({super.key, required this.title, required this.id});

  @override
  State<SwitchEx60> createState() => _SwitchEx60State();
}

class _SwitchEx60State extends State<SwitchEx60> {
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
      r'^var\s+day\s*=\s*".+";\s*switch\s*\(day\)\s*\{\s*(case\s*".+":\s*print\(.*\);\s*)+(default:\s*print\(.*\);\s*)\}$',
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
        "Fantastic! You've implemented a day planner using a `switch` statement.\n\n"
        "**Explanation:**\n"
        "- Each `case` represents a specific day and activity.\n"
        "- The `default` case handles invalid inputs.",
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
          "Start by declaring a `day` variable. Example: `var day = \"Monday\"`.",
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          "Hint 2",
          "Use `case` statements for each day. Example:\n"
          "case \"Monday\": print(\"Gym in the evening.\")",
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          "Solution",
          "The correct solution is:\n\n"
          '```swift\n'
          'var day = "Monday";\n'
          'switch day {\n'
          'case "Monday":\n'
          '    print("Gym in the evening.");\n'
          'case "Tuesday":\n'
          '    print("Attend team meeting.");\n'
          'case "Wednesday":\n'
          '    print("Work on personal project.");\n'
          'case "Thursday":\n'
          '    print("Grocery shopping.");\n'
          'case "Friday":\n'
          '    print("Dinner with friends.");\n'
          'case "Saturday":\n'
          '    print("Relax and read a book.");\n'
          'case "Sunday":\n'
          '    print("Go hiking.");\n'
          'default:\n'
          '    print("Invalid day entered.");\n'
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
              heroTag: "introButton5",
              onPressed: () {
                _showDialog(
                  "Challenge Instructions",
                  "Create a day planner using a `switch` statement:\n\n"
                  "1. Declare a `day` variable (string).\n"
                  "2. Use `case` statements to assign activities for each day:\n"
                  "   - `Monday`: Gym in the evening.\n"
                  "   - `Tuesday`: Attend team meeting.\n"
                  "   - `Wednesday`: Work on personal project.\n"
                  "   - `Thursday`: Grocery shopping.\n"
                  "   - `Friday`: Dinner with friends.\n"
                  "   - `Saturday`: Relax and read a book.\n"
                  "   - `Sunday`: Go hiking.\n"
                  "3. Include a `default` case for invalid inputs.",
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButton5",
              onPressed: _validateInput,
              backgroundColor: Colors.black,
              child: const Icon(Icons.play_arrow, color: Colors.white),
            ),
          ),
          if (_failedAttempts >= 3)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                heroTag: "helpButton5",
                onPressed: () {
                  _showDialog(
                    "Solution",
                    "The correct solution is:\n\n"
                    '```swift\n'
                    'var day = "Monday";\n'
                    'switch day {\n'
                    'case "Monday":\n'
                    '    print("Gym in the evening.");\n'
                    'case "Tuesday":\n'
                    '    print("Attend team meeting.");\n'
                    'case "Wednesday":\n'
                    '    print("Work on personal project.");\n'
                    'case "Thursday":\n'
                    '    print("Grocery shopping.");\n'
                    'case "Friday":\n'
                    '    print("Dinner with friends.");\n'
                    'case "Saturday":\n'
                    '    print("Relax and read a book.");\n'
                    'case "Sunday":\n'
                    '    print("Go hiking.");\n'
                    'default:\n'
                    '    print("Invalid day entered.");\n'
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
                        text: "day ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= \"Monday\";\n2  switch ",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "day {\n",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: '3      case "Monday":\n',
                        style: TextStyle(color: Colors.teal),
                      ),
                      const TextSpan(
                        text: '4          print("Gym in the evening.");\n',
                        style: TextStyle(color: Colors.grey),
                      ),
                      const TextSpan(
                        text: "5      default:\n",
                        style: TextStyle(color: Colors.teal),
                      ),
                      const TextSpan(
                        text: '6          print("Invalid day entered.");\n',
                        style: TextStyle(color: Colors.grey),
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
