import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/data/courses/swiftBasics/sbExModelListZH.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

class DictionariesEx96 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;
  const DictionariesEx96({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<DictionariesEx96> createState() => _DictionariesEx96State();
}

class _DictionariesEx96State extends State<DictionariesEx96> {
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
      r'^var\s+dictionary\s*=\s*\[.*\];\s*dictionary\[".*"\]\s*=\s*.*;\s*print\(dictionary\);$',
      multiLine: true,
    );

    final userInput = _controller.text.trim();

    if (codeRegex.hasMatch(userInput)) {
      purchaseManagerHive.updatePurchase(widget.id,
          purchased: true, completed: true);
      allProvider.data[Constant.catIndex].catExercise[widget.id].completed =
          true;
      allProvider.setData(allProvider.data);

      setState(() {
        _inputTextColor = Colors.green;
      });
      _controller.clear();

      _showDialog(
        "Correct! 🎉",
        "Well done! You've successfully added a key-value pair to a dictionary.\n\n"
            "**Explanation:**\n"
            "- Use the syntax `dictionary[key] = value` to add a new key-value pair.\n"
            "- If the key exists, the value will be updated.",
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
          "Start by declaring a dictionary. Example:\n"
              '```swift\n'
              'var dictionary = ["key1": "value1", "key2": "value2"];\n'
              '```',
        );
      } else if (_failedAttempts == 2) {
        final hintMessage =
            'Use `dictionary["newKey"] = "newValue"` to add a key-value pair.';
        _showDialog(
          "Hint 2",
          "$hintMessage\n\nExample:\n"
              '```swift\n'
              'var dictionary = ["key1": "value1"];\n'
              'dictionary["key2"] = "value2";\n'
              'print(dictionary);\n'
              '```',
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          "Solution",
          "The correct solution is:\n\n"
              '```swift\n'
              'var dictionary = ["key1": "value1", "key2": "value2"];\n'
              'dictionary["key3"] = "value3";\n'
              'print(dictionary);\n'
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
              heroTag: "introButtonDictionaries5",
              onPressed: () {
                _showDialog(
                  "Exercise Instructions",
                  "Welcome to Adding Key-Value Pairs! 🎉\n\n"
                      "Your task:\n"
                      "1. Declare a dictionary with at least two key-value pairs.\n"
                      "2. Add a new key-value pair to the dictionary.\n"
                      "3. Print the updated dictionary.",
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonDictionaries5",
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
                heroTag: "helpButtonDictionaries5",
                onPressed: () {
                  _showDialog(
                    "Solution",
                    "The correct solution is:\n\n"
                        '```swift\n'
                        'var dictionary = ["key1": "value1", "key2": "value2"];\n'
                        'dictionary["key3"] = "value3";\n'
                        'print(dictionary);\n'
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
                        text:
                            "= [\"key1\": \"value1\", \"key2\": \"value2\"];\n2  dictionary[\"key3\"] = \"value3\";\n3  print(dictionary);",
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
