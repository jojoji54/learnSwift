import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/data/courses/Swift/swiftBasics/sbExModelListEN.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

class ArraysEx87 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;
  const ArraysEx87({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<ArraysEx87> createState() => _ArraysEx87State();
}

class _ArraysEx87State extends State<ArraysEx87> {
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

  void _validateInput(AllProvider allProvider) async {
    final codeRegex = RegExp(
      r'^var\s+numbers\s*=\s*\[.*\];\s*var\s+evenNumbers\s*=\s*numbers\.filter\(\((\w+)\)\s*=>\s*\w+\s*%\s*2\s*==\s*0\);\s*print\(evenNumbers\);$',
      multiLine: true,
    );

    final userInput = _controller.text.trim();

    if (codeRegex.hasMatch(userInput)) {
      purchaseManagerHive.updatePurchase(widget.id, purchased: true, completed: true);
      allProvider.data[Constant.catIndex].catExercise[widget.id].completed = true;
      allProvider.setData(allProvider.data);

      setState(() {
        _inputTextColor = Colors.green;
      });
      _controller.clear();

      _showDialog(
        "Correct! 🎉",
        "Great! You've successfully filtered even numbers from the array.\n\n"
        "**Explanation:**\n"
        "- Use the `.filter()` method to iterate through the array.\n"
        "- Use a lambda function `(num) => num % 2 == 0` to check if a number is even.\n"
        "- The result is stored in the `evenNumbers` variable, which you then print.",
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
          "Start by declaring an array of numbers. Example: `var numbers = [1, 2, 3, 4, 5]`.",
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          "Hint 2",
          "Use `.filter((num) => num % 2 == 0)` to select only the even numbers.",
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          "Solution",
          "The correct solution is:\n\n"
          '```dart\n'
          'var numbers = [1, 2, 3, 4, 5];\n'
          'var evenNumbers = numbers.where((num) => num % 2 == 0).toList();\n'
          'print(evenNumbers);\n'
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
    final allProvider = Provider.of<AllProvider>(context);

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButtonArrays6",
              onPressed: () {
                _showDialog(
                  "Exercise Instructions",
                  "Welcome to Array Filtering! 🎉\n\n"
                  "Your task:\n"
                  "1. Declare an array of numbers (e.g., `var numbers = [1, 2, 3, 4, 5]`).\n"
                  "2. Use `.filter()` to create a new array of even numbers.\n"
                  "3. Print the new array.",
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonArrays6",
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
                heroTag: "helpButtonArrays6",
                onPressed: () {
                  _showDialog(
                    "Solution",
                    "The correct solution is:\n\n"
                    '```dart\n'
                    'var numbers = [1, 2, 3, 4, 5];\n'
                    'var evenNumbers = numbers.where((num) => num % 2 == 0).toList();\n'
                    'print(evenNumbers);\n'
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
                        text: "numbers ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= [1, 2, 3, 4, 5];\n2  var ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "evenNumbers ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= numbers.where((num) => num % 2 == 0).toList();\n"
                            "3  print(evenNumbers);",
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
