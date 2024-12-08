import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/data/courses/Swift/swiftBasics/sbExModelListZH.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

class DictionariesEx95 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;
  const DictionariesEx95({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<DictionariesEx95> createState() => _DictionariesEx95State();
}

class _DictionariesEx95State extends State<DictionariesEx95> {
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
      r'^var\s+dict1\s*=\s*\[.*\];\s*var\s+dict2\s*=\s*\[.*\];\s*let\s+combinedDict\s*=\s+dict1\.merging\(dict2\)\s*\{\s*\(_, new\)\s*in\s*new\s*\};\s*print\(combinedDict\);$',
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
        "Well done! You've successfully combined two dictionaries.\n\n"
        "**Explanation:**\n"
        "- Use `.merging()` to combine dictionaries.\n"
        "- In case of key conflicts, decide whether to keep the old or new value.",
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
          "Start by declaring two dictionaries. Example:\n"
          '```swift\n'
          'var dict1 = ["a": 1, "b": 2];\n'
          'var dict2 = ["b": 3, "c": 4];\n'
          '```',
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          "Hint 2",
          "Use `.merging()` to combine the dictionaries. Handle conflicts using a closure.",
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          "Solution",
          "The correct solution is:\n\n"
          '```swift\n'
          'var dict1 = ["a": 1, "b": 2];\n'
          'var dict2 = ["b": 3, "c": 4];\n'
          'let combinedDict = dict1.merging(dict2) { (_, new) in new };\n'
          'print(combinedDict);\n'
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
              heroTag: "introButtonDictionaries4",
              onPressed: () {
                _showDialog(
                  "Exercise Instructions",
                  "Welcome to Dictionary Combination! 🎉\n\n"
                  "Your task:\n"
                  "1. Declare two dictionaries with overlapping keys.\n"
                  "2. Combine the dictionaries using `.merging()`.\n"
                  "3. Handle key conflicts by choosing the new value.\n"
                  "4. Print the combined dictionary.",
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonDictionaries4",
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
                heroTag: "helpButtonDictionaries4",
                onPressed: () {
                  _showDialog(
                    "Solution",
                    "The correct solution is:\n\n"
                    '```swift\n'
                    'var dict1 = ["a": 1, "b": 2];\n'
                    'var dict2 = ["b": 3, "c": 4];\n'
                    'let combinedDict = dict1.merging(dict2) { (_, new) in new };\n'
                    'print(combinedDict);\n'
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
                        text: "dict1 ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= [\"a\": 1, \"b\": 2];\n2  var ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "dict2 ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= [\"b\": 3, \"c\": 4];\n3  let ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "combinedDict ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= dict1.merging(dict2) { (_, new) in new };\n4  print(combinedDict);",
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
