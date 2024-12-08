import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/data/courses/swiftBasics/sbExModelListEN.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

class DictionariesEx100 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;
  const DictionariesEx100(
      {super.key, required this.title, required this.id, required this.completed});

  @override
  State<DictionariesEx100> createState() => _DictionariesEx100State();
}

class _DictionariesEx100State extends State<DictionariesEx100> {
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

  void _validateInput(AllProvider allprovider) async {
    final codeRegex = RegExp(
      r'^var\s+dictionary\s*=\s*\[".*":\s*".*"\];\s*for\s+\(\w+,\s*\w+\)\s+in\s+dictionary\s*\{\s*print\(".*"\);\s*\}$',
      multiLine: true,
    );

    final userInput = _controller.text.trim();

    if (codeRegex.hasMatch(userInput)) {
      purchaseManagerHive.updatePurchase(widget.id, purchased: true, completed: true);
      allprovider.data[Constant.catIndex].catExercise[widget.id].completed = true;
      allprovider.setData(allprovider.data);
      setState(() {
        _inputTextColor = Colors.green;
      });
      _controller.clear();

      _showDialog(
        "Correct! 🎉",
        "Fantastic! You've successfully iterated over a dictionary using a `for-in` loop.\n\n"
        "**Explanation:**\n"
        "- Use `for (key, value) in dictionary` to loop through key-value pairs.\n"
        "- Print each key and value during the iteration.",
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
          "Start by creating a dictionary. Example:\n"
          '```swift\n'
          'var dictionary = ["name": "John", "age": "25"];\n'
          '```',
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          "Hint 2",
          "Use a `for-in` loop to iterate over the dictionary and access both key and value:\n"
          '```swift\n'
          'for (key, value) in dictionary {\n'
          '    print("\\(key): \\(value)");\n'
          '}\n'
          '```',
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          "Solution",
          "The correct solution is:\n\n"
          '```swift\n'
          'var dictionary = ["name": "John", "age": "25"];\n'
          'for (key, value) in dictionary {\n'
          '    print("\\(key): \\(value)");\n'
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
    final allProvider = Provider.of<AllProvider>(context);
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButtonDictionary7",
              onPressed: () {
                _showDialog(
                  "Exercise Instructions",
                  "Welcome to Dictionary Iteration! 🎉\n\n"
                  "Your task:\n"
                  "1. Create a dictionary with at least two key-value pairs.\n"
                  '2. Use a `for-in` loop to iterate over the dictionary.\n'
                  "3. Print each key and its value inside the loop.",
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonDictionary7",
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
                heroTag: "helpButtonDictionary7",
                onPressed: () {
                  _showDialog(
                    "Solution",
                    "The correct solution is:\n\n"
                    '```swift\n'
                    'var dictionary = ["name": "John", "age": "25"];\n'
                    'for (key, value) in dictionary {\n'
                    '    print("\\(key): \\(value)");\n'
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
                        text: "dictionary ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= [\"name\": \"John\", \"age\": \"25\"];\n",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "2  for (key, value) in dictionary {\n",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "3      print(\"\\(key): \\(value)\");\n",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "4  }",
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
