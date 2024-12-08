import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/data/courses/Swift/swiftBasics/sbExModelListZH.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

class FunctionsEx132 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;
  const FunctionsEx132({super.key, required this.title, required this.id, required this.completed});

  @override
  State<FunctionsEx132> createState() => _FunctionsEx132State();
}

class _FunctionsEx132State extends State<FunctionsEx132> {
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
      r'^func\s+factorial\(\s*of\s+number:\s*Int\s*\)\s*->\s*Int\s*{\s*if\s+number\s*==\s*0\s*{\s*return\s+1;\s*}\s*return\s+number\s*\*\s*factorial\(\s*of:\s*number\s*-1\s*\);\s*}\s*let\s+\w+\s*=\s*factorial\(of:\s*\d+\);\s*print\(.*\);$',
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
        "You've successfully implemented a recursive factorial function.\n\n"
        "**Explanation:**\n"
        "- A factorial of a number is calculated as `n! = n × (n-1) × (n-2) × ... × 1`.\n"
        "- Use recursion by calling the function within itself until the base case (`number == 0`).",
        titleColor: Colors.green,
      );
    } else {
      setState(() {
        _failedAttempts++;
        _inputTextColor = Colors.orange;

        if (_failedAttempts == 1) {
          _showDialog(
            "Hint 1",
            "Define a recursive function named `factorial` that calculates the factorial of a number.",
          );
        } else if (_failedAttempts == 2) {
          _showDialog(
            "Hint 2",
            "The base case is when `number == 0`. Return `1` in this case. Otherwise, return `number * factorial(number - 1)`.",
          );
        } else if (_failedAttempts >= 3) {
          _showDialog(
            "Solution",
            "The correct solution is:\n\n"
            '```swift\n'
            'func factorial(of number: Int) -> Int {\n'
            '    if number == 0 {\n'
            '        return 1;\n'
            '    }\n'
            '    return number * factorial(of: number - 1);\n'
            '}\n'
            'let result = factorial(of: 5);\n'
            'print("Factorial: \\(result)");\n'
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
              heroTag: "introButtonFunctions132",
              onPressed: () {
                _showDialog(
                  "Challenge Instructions",
                  "Welcome to the Factorial Challenge! 🎉\n\n"
                  "Your task:\n"
                  "1. Define a function named `factorial`.\n"
                  "2. The function should take an integer as input and return its factorial.\n"
                  "3. Use recursion to calculate the factorial of the number.\n"
                  "4. Print the result of calling the function.",
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonFunctions132",
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
                heroTag: "helpButtonFunctions132",
                onPressed: () {
                  _showDialog(
                    "Solution",
                    "The correct solution is:\n\n"
                    '```swift\n'
                    'func factorial(of number: Int) -> Int {\n'
                    '    if number == 0 {\n'
                    '        return 1;\n'
                    '    }\n'
                    '    return number * factorial(of: number - 1);\n'
                    '}\n'
                    'let result = factorial(of: 5);\n'
                    'print("Factorial: \\(result)");\n'
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
                        text: "factorial(of number: Int) -> Int {\n",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "2      if number == 0 {\n",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "3          return 1;\n",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "4      }\n5      return number * factorial(of: number - 1);\n",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "6  }\n7  let result = factorial(of: 5);\n",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "8  print(\"Factorial: \\(result)\");",
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
