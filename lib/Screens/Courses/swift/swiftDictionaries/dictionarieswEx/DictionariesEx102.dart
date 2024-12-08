import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/data/courses/Swift/swiftBasics/sbExModelListEN.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

class DictionariesEx102 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;
  const DictionariesEx102(
      {super.key, required this.title, required this.id, required this.completed});

  @override
  State<DictionariesEx102> createState() => _DictionariesEx102State();
}

class _DictionariesEx102State extends State<DictionariesEx102> {
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
      r'^var\s+dictionary\s*=\s*\[.*:.*\];\s*dictionary\[.*\]\s*=\s*.*;\s*let\s+filteredDictionary\s*=\s+dictionary\.filter\s*\{\s*\(_,.*value.*\)\s+in\s+value\s*>\s*5\s*\};\s*print\(filteredDictionary\);$',
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
        "Excellent! You've successfully updated and filtered a dictionary.\n\n"
        "**Explanation:**\n"
        "- Use indexing to update a value in the dictionary.\n"
        "- Use `.filter` to create a new dictionary with filtered values.\n"
        "- Print the resulting filtered dictionary.",
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
          "Start by creating a dictionary and updating one of its values. Example: `dictionary[\"key\"] = 10`.",
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          "Hint 2",
          "Use `.filter` to create a new dictionary where values are greater than 5. Remember to use `(_, value)` in the closure.",
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          "Solution",
          "The correct solution is:\n\n"
          '```swift\n'
          'var dictionary = ["a": 1, "b": 2, "c": 3];\n'
          'dictionary["b"] = 10;\n'
          'let filteredDictionary = dictionary.filter { (_, value) in value > 5 };\n'
          'print(filteredDictionary);\n'
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
              heroTag: "introButtonDictionaries102",
              onPressed: () {
                _showDialog(
                  "Challenge Instructions",
                  "Welcome to Updating and Filtering a Dictionary! 🎉\n\n"
                  "Your task:\n"
                  "1. Create a dictionary with key-value pairs (e.g., `var dictionary = [\"a\": 1, \"b\": 2, \"c\": 3]`).\n"
                  "2. Update the value for a specific key (e.g., `dictionary[\"b\"] = 10`).\n"
                  "3. Use `.filter` to create a new dictionary with values greater than a specified threshold.\n"
                  "4. Print the resulting dictionary.",
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonDictionaries102",
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
                heroTag: "helpButtonDictionaries102",
                onPressed: () {
                  _showDialog(
                    "Solution",
                    "The correct solution is:\n\n"
                    '```swift\n'
                    'var dictionary = ["a": 1, "b": 2, "c": 3];\n'
                    'dictionary["b"] = 10;\n'
                    'let filteredDictionary = dictionary.filter { (_, value) in value > 5 };\n'
                    'print(filteredDictionary);\n'
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
                        text: "= [\"a\": 1, \"b\": 2, \"c\": 3];\n2  dictionary[\"b\"] = 10;\n3  let ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "filteredDictionary ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= dictionary.filter { (_, value) in value > 5 };\n4  print(filteredDictionary);",
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
