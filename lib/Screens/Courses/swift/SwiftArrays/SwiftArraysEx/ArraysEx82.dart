import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/data/courses/Swift/swiftBasics/sbExModelListEN.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

class ArraysEx82 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;
  const ArraysEx82({super.key, required this.title, required this.id, required this.completed});

  @override
  State<ArraysEx82> createState() => _ArraysEx82State();
}

class _ArraysEx82State extends State<ArraysEx82> {
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
      r'^var\s+numbers\s*=\s*\[.*\];\s*var\s+sum\s*=\s*0;\s*for\s+\w+\s+in\s+numbers\s*\{\s*sum\s*\+=\s*\w+;\s*\}\s*print\(sum\);$',
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
        "Great! You've successfully calculated the sum of all elements in an array.\n\n"
        "**Explanation:**\n"
        "- Declare an array with numbers.\n"
        "- Initialize a variable `sum` to store the total.\n"
        "- Use a `for` loop to iterate through the array and add each element to the `sum`.\n"
        "- Print the total sum.",
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
          "Start by declaring an array of integers and a variable to store the sum. Example: `var numbers = [1, 2, 3];` and `var sum = 0;`.",
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          "Hint 2",
          "Use a `for` loop to iterate over the array and add each number to the `sum` variable.",
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          "Solution",
          "The correct solution is:\n\n"
          '```swift\n'
          'var numbers = [1, 2, 3, 4, 5];\n'
          'var sum = 0;\n'
          'for number in numbers {\n'
          '    sum += number;\n'
          '}\n'
          'print(sum);\n'
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
                  "Welcome to Array Sum Challenge! 🎉\n\n"
                  "Your task:\n"
                  "1. Create an array of numbers (e.g., `var numbers = [1, 2, 3, 4, 5]`).\n"
                  "2. Initialize a variable `sum` to store the total.\n"
                  "3. Use a `for` loop to iterate through the array.\n"
                  "4. Add each number to the `sum` variable.\n"
                  "5. Print the total sum at the end.",
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
                    'var numbers = [1, 2, 3, 4, 5];\n'
                    'var sum = 0;\n'
                    'for number in numbers {\n'
                    '    sum += number;\n'
                    '}\n'
                    'print(sum);\n'
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
                        text: "= [1, 2, 3];\n2  var ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "sum ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= 0;\n3  for ",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "number in numbers {\n",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "4      sum += number;\n",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "5  }\n6  print(sum);",
                        style: TextStyle(color: Colors.teal),
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
