import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/data/courses/Swift/swiftBasics/sbExModelListZH.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

class SetsEx108 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;
  const SetsEx108({super.key, required this.title, required this.id, required this.completed});

  @override
  State<SetsEx108> createState() => _SetsEx108State();
}

class _SetsEx108State extends State<SetsEx108> {
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
      r'^var\s+mySet\s*=\s*Set<String>\(\);\s*mySet\.insert\(".*"\);\s*if\s+mySet\.contains\(".*"\)\s*\{\s*print\(.*\);\s*\}\s*else\s*\{\s*print\(.*\);\s*\}$',
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
        "Great! You've successfully checked for element presence in a Set.\n\n"
        "**Explanation:**\n"
        "- Use `.contains(element)` to check if a specific item exists in the Set.\n"
        "- Implement conditional logic based on whether the element is found.",
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
          "Create a Set and add some elements using `.insert(\"value\")`.",
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          "Hint 2",
          "Use an `if` statement with `.contains(\"value\")` to check if an element exists in the Set.",
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          "Solution",
          "The correct solution is:\n\n"
          '```swift\n'
          'var mySet = Set<String>();\n'
          'mySet.insert("apple");\n'
          'if mySet.contains("apple") {\n'
          '    print("The Set contains apple");\n'
          '} else {\n'
          '    print("The Set does not contain apple");\n'
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
              heroTag: "introButtonSets4",
              onPressed: () {
                _showDialog(
                  "Exercise Instructions",
                  "Welcome to Checking Element Presence in Sets! 🎉\n\n"
                  "Your task:\n"
                  "1. Create a Set and add at least one element (e.g., `mySet.insert(\"apple\")`).\n"
                  "2. Use `.contains(\"value\")` in an `if-else` block to check for an element.\n"
                  "3. Print a message based on whether the element exists.",
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonSets4",
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
                heroTag: "helpButtonSets4",
                onPressed: () {
                  _showDialog(
                    "Solution",
                    "The correct solution is:\n\n"
                    '```swift\n'
                    'var mySet = Set<String>();\n'
                    'mySet.insert("apple");\n'
                    'if mySet.contains("apple") {\n'
                    '    print("The Set contains apple");\n'
                    '} else {\n'
                    '    print("The Set does not contain apple");\n'
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
                        text: "mySet ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= Set<String>();\n2  mySet.insert(",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "\"apple\");\n",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "3  if ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "mySet.contains(",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "\"apple\") {\n",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "4      print(\"The Set contains apple\");\n",
                        style: TextStyle(color: Colors.teal),
                      ),
                      const TextSpan(
                        text: "5  } else { ... }\n",
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
