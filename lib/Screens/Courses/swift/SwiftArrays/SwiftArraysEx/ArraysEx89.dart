import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/data/courses/Swift/swiftBasics/sbExModelListEN.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

class ArraysEx89 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;
  const ArraysEx89({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<ArraysEx89> createState() => _ArraysEx89State();
}

class _ArraysEx89State extends State<ArraysEx89> {
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
      r'^var\s+numbers\s*=\s*\[.*\];\s*var\s+largest\s*=\s+numbers\.max\(\);\s*print\(largest\);$',
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
        "Well done! You've successfully found the largest number in the array.\n\n"
        "**Explanation:**\n"
        "- Use `max()` to find the largest number in the array.\n"
        "- Print the result using `print()`.",
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
          "Declare an array with numbers. Example: `var numbers = [3, 5, 7, 2, 8]`.",
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          "Hint 2",
          "Use the `.max()` function to find the largest number.",
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          "Solution",
          "The correct solution is:\n\n"
          '```swift\n'
          'var numbers = [3, 5, 7, 2, 8];\n'
          'var largest = numbers.max();\n'
          'print(largest);\n'
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
              heroTag: "introButtonArrays5",
              onPressed: () {
                _showDialog(
                  "Exercise Instructions",
                  "Welcome to the Largest Number Challenge! 🎉\n\n"
                  "Your task:\n"
                  "1. Create an array of integers (e.g., `[3, 5, 7, 2, 8]`).\n"
                  "2. Use a function to find the largest number in the array.\n"
                  "3. Print the largest number using `print()`.",
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonArrays5",
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
                heroTag: "helpButtonArrays5",
                onPressed: () {
                  _showDialog(
                    "Solution",
                    "The correct solution is:\n\n"
                    '```swift\n'
                    'var numbers = [3, 5, 7, 2, 8];\n'
                    'var largest = numbers.max();\n'
                    'print(largest);\n'
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
                        text: "= [3, 5, 7, 2, 8];\n2  var ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "largest ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= numbers.max();\n3  print(largest);",
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
