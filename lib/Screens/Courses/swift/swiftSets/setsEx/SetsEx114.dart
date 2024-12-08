import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/data/courses/Swift/swiftBasics/sbExModelListZH.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

class SetsEx114 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;
  const SetsEx114({super.key, required this.title, required this.id, required this.completed});

  @override
  State<SetsEx114> createState() => _SetsEx114State();
}

class _SetsEx114State extends State<SetsEx114> {
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
      r'^var\s+set1\s*=\s*Set<Int>\(.*\);\s*var\s+set2\s*=\s*Set<Int>\(.*\);\s*let\s+commonElements\s*=\s*set1\.intersection\(set2\);\s*print\(commonElements\);$',
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
        "Well done! You've successfully identified common elements in two sets.\n\n"
        "**Explanation:**\n"
        "- The `.intersection()` method returns a new Set containing only the elements that exist in both Sets.\n"
        "- This is useful for finding overlaps or commonalities between two datasets.",
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
          "Start by creating two Sets of integers. Example: `Set<Int>([1, 2, 3])`.",
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          "Hint 2",
          "Use `.intersection()` to find elements that are common in both Sets.",
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          "Solution",
          "The correct solution is:\n\n"
          '```swift\n'
          'var set1 = Set<Int>([1, 2, 3, 4]);\n'
          'var set2 = Set<Int>([3, 4, 5, 6]);\n'
          'let commonElements = set1.intersection(set2);\n'
          'print(commonElements);\n'
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
              heroTag: "introButtonSets10",
              onPressed: () {
                _showDialog(
                  "Exercise Instructions",
                  "Welcome to Intersection Challenge! 🎉\n\n"
                  "Your task:\n"
                  "1. Create two Sets of integers.\n"
                  "2. Use `.intersection()` to find elements common to both Sets.\n"
                  "3. Print the result.",
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonSets10",
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
                heroTag: "helpButtonSets10",
                onPressed: () {
                  _showDialog(
                    "Solution",
                    "The correct solution is:\n\n"
                    '```swift\n'
                    'var set1 = Set<Int>([1, 2, 3, 4]);\n'
                    'var set2 = Set<Int>([3, 4, 5, 6]);\n'
                    'let commonElements = set1.intersection(set2);\n'
                    'print(commonElements);\n'
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
                        text: "= Set<Int>([1, 2, 3, 4]);\n",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "2  var ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "set2 ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= Set<Int>([3, 4, 5, 6]);\n",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "3  let ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "commonElements ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= set1.intersection(set2);\n",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "4  print(commonElements);",
                        style: TextStyle(color: Colors.purple),
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
