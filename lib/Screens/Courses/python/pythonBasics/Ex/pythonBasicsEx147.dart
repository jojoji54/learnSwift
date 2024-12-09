import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/data/courses/Swift/swiftBasics/sbExModelListZH.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

class PythonBasicsEx147 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;
  const PythonBasicsEx147({super.key, required this.title, required this.id, required this.completed});

  @override
  State<PythonBasicsEx147> createState() => _PythonBasicsEx147State();
}

class _PythonBasicsEx147State extends State<PythonBasicsEx147> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.grey;

  final RegExp _codeRegex = RegExp(
    r"^.*print\s*\(\s*.*\s*\).*$",
    multiLine: true,
  );

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

  void _validateInput(String userInput, AllProvider allprovider) {
    if (_codeRegex.hasMatch(userInput)) {
      setState(() {
        _inputTextColor = Colors.green;
      });
    } else {
      setState(() {
        _inputTextColor = Colors.red;
      });
    }
  }

  void _submit(AllProvider allprovider) {
    final userInput = _controller.text.trim();

    if (_codeRegex.hasMatch(userInput)) {
      purchaseManagerHive.updatePurchase(widget.id,
          purchased: true, completed: true);
      allprovider.data[Constant.catIndex].catExercise[widget.id].completed = true;
      allprovider.setData(allprovider.data);
      _controller.clear();

      _showDialog(
        "Correct! 🎉",
        "Great! You successfully used the `print()` function in Python.\n\n"
        "**Explanation:**\n"
        "- The `print()` function outputs the content passed to it inside the parentheses to the console.\n"
        "- You can pass text, variables, or even expressions to `print()`.",
        titleColor: Colors.green,
      );
    } else {
      setState(() {
        _failedAttempts++;
        _inputTextColor = Colors.red;
      });

      if (_failedAttempts == 1) {
        _showDialog(
          "Hint 1",
          "Use the `print()` function to display a message. For example:\n"
          '```python\n'
          'print("Hello, Python!")\n'
          '```',
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          "Hint 2",
          "Ensure that your `print()` statement is correctly formatted. Example:\n"
          '```python\n'
          'print("This is a test message")\n'
          '```',
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          "Solution",
          "The correct solution is:\n\n"
          '```python\n'
          'print("Hello, Python!")\n'
          '```',
          titleColor: Colors.red,
        );
      }
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
              heroTag: "introButtonPythonBasics1",
              onPressed: () {
                _showDialog(
                  "Exercise Instructions",
                  "Welcome to Python Basics: Print Anything! 🎉\n\n"
                  "Your task:\n"
                  "1. Use the `print()` function to display a message in the console.\n"
                  "2. You can print anything, such as text, a variable, or an expression.",
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonPythonBasics1",
              onPressed: () {
                _submit(allProvider);
              },
              backgroundColor: Colors.black,
              child: const Icon(Icons.play_arrow, color: Colors.white),
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
                      fontFamily: 'Consolas',
                      fontSize: 18,
                    ),
                    children: [
                      const TextSpan(
                        text: "Example:\n",
                        style: TextStyle(color: Colors.grey),
                      ),
                      const TextSpan(
                        text: ">>> ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: 'print("Hello, Python!")\n',
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "Hello, Python!\n",
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
                    fontFamily: 'Consolas',
                    fontSize: 18,
                    color: _inputTextColor,
                  ),
                  onChanged: (value) {
                    _validateInput(value, allProvider);
                  },
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                    hintText: '"Enter your Python code here"',
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