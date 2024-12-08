import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/data/courses/Swift/swiftBasics/sbExModelListZH.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

class SetsEx116 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;
  const SetsEx116({super.key, required this.title, required this.id, required this.completed});

  @override
  State<SetsEx116> createState() => _SetsEx116State();
}

class _SetsEx116State extends State<SetsEx116> {
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
      r'^var\s+set1\s*=\s*Set<Int>\(.*\);\s*var\s+set2\s*=\s*Set<Int>\(.*\);\s*let\s+isSubset\s*=\s*set1\.isSubset\(of:\s*set2\);\s*let\s+isSuperset\s*=\s*set2\.isSuperset\(of:\s*set1\);\s*print\(.*\);\s*print\(.*\);$',
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
        "Great job! You've successfully checked for subsets and supersets using Sets.\n\n"
        "**Explanation:**\n"
        "- The `.isSubset(of:)` method checks if all elements of one Set are contained in another.\n"
        "- The `.isSuperset(of:)` method verifies if a Set contains all elements of another Set.",
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
          "Start by declaring two Sets. Ensure one is a subset of the other. Example:\n"
          "`var set1 = Set([1, 2]);` and `var set2 = Set([1, 2, 3]);`",
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          "Hint 2",
          "Use the `.isSubset(of:)` method to check if `set1` is a subset of `set2`. Similarly, use `.isSuperset(of:)` for the opposite check.",
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          "Solution",
          "The correct solution is:\n\n"
          '```swift\n'
          'var set1 = Set([1, 2]);\n'
          'var set2 = Set([1, 2, 3]);\n'
          'let isSubset = set1.isSubset(of: set2);\n'
          'let isSuperset = set2.isSuperset(of: set1);\n'
          'print("Set1 is subset of Set2: \\(isSubset)");\n'
          'print("Set2 is superset of Set1: \\(isSuperset)");\n'
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
              heroTag: "introButton116",
              onPressed: () {
                _showDialog(
                  "Exercise Instructions",
                  "Welcome to the Subset and Superset Challenge! 🎉\n\n"
                  "Your task:\n"
                  "1. Create two Sets where one is a subset of the other.\n"
                  "2. Use `.isSubset(of:)` to check if the first Set is a subset.\n"
                  "3. Use `.isSuperset(of:)` to verify if the second Set is a superset.\n"
                  "4. Print the results of both checks.",
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButton116",
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
                heroTag: "helpButton116",
                onPressed: () {
                  _showDialog(
                    "Solution",
                    "The correct solution is:\n\n"
                    '```swift\n'
                    'var set1 = Set([1, 2]);\n'
                    'var set2 = Set([1, 2, 3]);\n'
                    'let isSubset = set1.isSubset(of: set2);\n'
                    'let isSuperset = set2.isSuperset(of: set1);\n'
                    'print("Set1 is subset of Set2: \\(isSubset)");\n'
                    'print("Set2 is superset of Set1: \\(isSuperset)");\n'
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
                        text: "set1 ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= Set([1, 2]);\n2  var ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "set2 ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= Set([1, 2, 3]);\n3  let ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "isSubset ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= set1.isSubset(of: set2);\n4  let ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "isSuperset ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= set2.isSuperset(of: set1);\n5  print(...);",
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
