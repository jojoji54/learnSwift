import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/data/courses/Swift/swiftBasics/sbExModelListZH.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

class FunctionsEx125 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;
  const FunctionsEx125(
      {super.key,
      required this.title,
      required this.id,
      required this.completed});

  @override
  State<FunctionsEx125> createState() => _FunctionsEx125State();
}

class _FunctionsEx125State extends State<FunctionsEx125> {
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
      r'^func\s+\w+\(\w+\s*:\s*String\s*=\s*".*"\)\s*{\s*print\(.*\);\s*}\s*\w+\(\w+\s*:\s*".*"\);\s*\w+\(\);$',
      multiLine: true,
    );

    final userInput = _controller.text.trim();

    if (codeRegex.hasMatch(userInput)) {
      purchaseManagerHive.updatePurchase(widget.id,
          purchased: true, completed: true);
      allprovider.data[Constant.catIndex].catExercise[widget.id].completed =
          true;
      allprovider.setData(allprovider.data);
      setState(() {
        _inputTextColor = Colors.green;
      });
      _controller.clear();

      _showDialog(
        "Correct! 🎉",
        "Well done! You've used default parameter values in a function.\n\n"
        "**Explanation:**\n"
        "- Default parameter values allow you to call a function without providing all arguments.\n"
        "- If an argument is omitted, the default value is used.",
        titleColor: Colors.green,
      );
    } else {
      setState(() {
        _failedAttempts++;
        _inputTextColor = Colors.orange;

        if (_failedAttempts == 1) {
          _showDialog(
            "Hint 1",
            "Define a function with a parameter that has a default value. Call the function with and without the parameter.",
          );
        } else if (_failedAttempts == 2) {
          _showDialog(
            "Hint 2",
            "Use `=` to assign a default value to the parameter (e.g., `name: String = \"Guest\"`).",
          );
        } else if (_failedAttempts >= 3) {
          _showDialog(
            "Solution",
            "The correct solution is:\n\n"
            '```swift\n'
            'func greet(name: String = "Guest") {\n'
            '    print("Hello, \\(name)!");\n'
            '}\n'
            'greet(name: "Alice");\n'
            'greet();\n'
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
              heroTag: "introButtonFunctions126",
              onPressed: () {
                _showDialog(
                  "Exercise Instructions",
                  "Welcome to Functions with Default Parameters! 🎉\n\n"
                  "Your task:\n"
                  "1. Define a function named `greet` that takes a parameter `name` (type `String`) with a default value of \"Guest\".\n"
                  "2. Inside the function, use `print` to display a greeting message.\n"
                  "3. Call the function with and without providing the `name` parameter.",
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonFunctions126",
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
                heroTag: "helpButtonFunctions126",
                onPressed: () {
                  _showDialog(
                    "Solution",
                    "The correct solution is:\n\n"
                    '```swift\n'
                    'func greet(name: String = "Guest") {\n'
                    '    print("Hello, \\(name)!");\n'
                    '}\n'
                    'greet(name: "Alice");\n'
                    'greet();\n'
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
                        text: "1  func ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "greet(name: String = \"Guest\") {\n",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "2      print(\"Hello, \\(name)!\");\n",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "3  }\n4  greet(name: \"Alice\");\n5  greet();",
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
