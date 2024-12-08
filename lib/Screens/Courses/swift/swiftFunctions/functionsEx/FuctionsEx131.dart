import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/data/courses/Swift/swiftBasics/sbExModelListZH.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

class FunctionsEx131 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;
  const FunctionsEx131({super.key, required this.title, required this.id, required this.completed});

  @override
  State<FunctionsEx131> createState() => _FunctionsEx131State();
}

class _FunctionsEx131State extends State<FunctionsEx131> {
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
      r'^func\s+isPalindrome\(\s*input:\s*String\s*\)\s*->\s*Bool\s*{\s*let\s+reversed\s*=\s*String\(input.reversed\(\)\);\s*return\s+input\s*==\s*reversed;\s*}\s*let\s+\w+\s*=\s*isPalindrome\(input:\s*".*"\);\s*print\(.*\);$',
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
        "You've successfully implemented a palindrome checker.\n\n"
        "**Explanation:**\n"
        "- A palindrome is a word or phrase that reads the same backward as forward.\n"
        "- Reverse the input string and compare it with the original.\n"
        "- Return `true` if they match, otherwise return `false`.",
        titleColor: Colors.green,
      );
    } else {
      setState(() {
        _failedAttempts++;
        _inputTextColor = Colors.orange;

        if (_failedAttempts == 1) {
          _showDialog(
            "Hint 1",
            "Define a function `isPalindrome` that takes a string as input and returns a boolean.",
          );
        } else if (_failedAttempts == 2) {
          _showDialog(
            "Hint 2",
            "Reverse the input string using `String(input.reversed())` and compare it to the original.",
          );
        } else if (_failedAttempts >= 3) {
          _showDialog(
            "Solution",
            "The correct solution is:\n\n"
            '```swift\n'
            'func isPalindrome(input: String) -> Bool {\n'
            '    let reversed = String(input.reversed());\n'
            '    return input == reversed;\n'
            '}\n'
            'let result = isPalindrome(input: "radar");\n'
            'print("Is palindrome: \\(result)");\n'
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
              heroTag: "introButtonFunctions131",
              onPressed: () {
                _showDialog(
                  "Challenge Instructions",
                  "Welcome to the Palindrome Checker Challenge! 🎉\n\n"
                  "Your task:\n"
                  "1. Define a function named `isPalindrome`.\n"
                  "2. The function should take a string parameter and return a boolean.\n"
                  "3. Reverse the input string and compare it with the original.\n"
                  "4. Print `true` if the string is a palindrome, otherwise `false`.",
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonFunctions131",
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
                heroTag: "helpButtonFunctions131",
                onPressed: () {
                  _showDialog(
                    "Solution",
                    "The correct solution is:\n\n"
                    '```swift\n'
                    'func isPalindrome(input: String) -> Bool {\n'
                    '    let reversed = String(input.reversed());\n'
                    '    return input == reversed;\n'
                    '}\n'
                    'let result = isPalindrome(input: "radar");\n'
                    'print("Is palindrome: \\(result)");\n'
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
                        text: "isPalindrome(input: String) -> Bool {\n",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "2      let reversed = String(input.reversed());\n",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "3      return input == reversed;\n",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "4  }\n5  let result = isPalindrome(input: \"radar\");\n",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "6  print(\"Is palindrome: \\(result)\");",
                        style: TextStyle(color: Colors.green),
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
