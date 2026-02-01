import 'package:flutter/material.dart';

class PyCodeTheme {
  static const base = TextStyle(
    fontFamily: 'Consolas',
    fontSize: 18,
    color: Colors.black,
  );

  static const lineNumber = TextStyle(
    fontFamily: 'Consolas',
    fontSize: 18,
    color: Colors.blue,
  );

  static const prompt = TextStyle(
    fontFamily: 'Consolas',
    fontSize: 18,
    color: Colors.blue,
  );

  static const keyword = TextStyle(
    fontFamily: 'Consolas',
    fontSize: 18,
    color: Colors.blue,
  );

  static const builtin = TextStyle(
    fontFamily: 'Consolas',
    fontSize: 18,
    color: Colors.deepPurple,
  );

  static const string = TextStyle(
    fontFamily: 'Consolas',
    fontSize: 18,
    color: Colors.orange,
  );

  static const number = TextStyle(
    fontFamily: 'Consolas',
    fontSize: 18,
    color: Colors.teal,
  );

  static const comment = TextStyle(
    fontFamily: 'Consolas',
    fontSize: 18,
    color: Colors.grey,
  );

  static const identifier = TextStyle(
    fontFamily: 'Consolas',
    fontSize: 18,
    color: Colors.green,
  );

  static const punctuation = TextStyle(
    fontFamily: 'Consolas',
    fontSize: 18,
    color: Colors.black,
  );
}

class PythonMiniHighlighter {
  static final Set<String> _keywords = {
    'def','return','if','elif','else','for','while','break','continue',
    'try','except','finally','with','as','lambda','True','False','None',
    'and','or','not','in','is','pass'
  };

  static final Set<String> _builtins = {
    'print','input','len','range','int','str','float','list','dict','set','tuple'
  };

  static final RegExp _stringRegex =
      RegExp(r'''("([^"\\]|\\.)*"|'([^'\\]|\\.)*')''');

  static final RegExp _numberRegex = RegExp(r'\b\d+(\.\d+)?\b');
  static final RegExp _identifierRegex = RegExp(r'\b[A-Za-z_]\w*\b');

  static List<TextSpan> highlightLine(String line, {bool showPrompt = false}) {
    final int commentIndex = line.indexOf('#');
    String codePart = line;
    String? commentPart;

    if (commentIndex >= 0) {
      codePart = line.substring(0, commentIndex);
      commentPart = line.substring(commentIndex);
    }

    final spans = <TextSpan>[];

    if (showPrompt) {
      spans.add(const TextSpan(text: '>>> ', style: PyCodeTheme.prompt));
    }

    spans.addAll(_tokenize(codePart));

    if (commentPart != null) {
      spans.add(TextSpan(text: commentPart, style: PyCodeTheme.comment));
    }

    return spans;
  }

  static List<TextSpan> _tokenize(String text) {
    final spans = <TextSpan>[];
    int i = 0;

    while (i < text.length) {
      // strings
      final strMatch = _stringRegex.matchAsPrefix(text, i);
      if (strMatch != null) {
        spans.add(TextSpan(text: strMatch.group(0)!, style: PyCodeTheme.string));
        i = strMatch.end;
        continue;
      }

      // numbers
      final numMatch = _numberRegex.matchAsPrefix(text, i);
      if (numMatch != null) {
        spans.add(TextSpan(text: numMatch.group(0)!, style: PyCodeTheme.number));
        i = numMatch.end;
        continue;
      }

      // identifiers / keywords / builtins
      final idMatch = _identifierRegex.matchAsPrefix(text, i);
      if (idMatch != null) {
        final token = idMatch.group(0)!;
        if (_keywords.contains(token)) {
          spans.add(TextSpan(text: token, style: PyCodeTheme.keyword));
        } else if (_builtins.contains(token)) {
          spans.add(TextSpan(text: token, style: PyCodeTheme.builtin));
        } else {
          spans.add(TextSpan(text: token, style: PyCodeTheme.identifier));
        }
        i = idMatch.end;
        continue;
      }

      // punctuation / spaces
      spans.add(TextSpan(text: text[i], style: PyCodeTheme.punctuation));
      i++;
    }

    return spans;
  }
}

class CodePreview extends StatelessWidget {
  final List<String> lines;
  final bool withLineNumbers;
  final bool withPrompt;

  const CodePreview({
    super.key,
    required this.lines,
    this.withLineNumbers = true,
    this.withPrompt = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(lines.length, (index) {
        final lineNo = index + 1;
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (withLineNumbers) ...[
              SizedBox(
                width: 28,
                child: Text(
                  '$lineNo',
                  textAlign: TextAlign.right,
                  style: PyCodeTheme.lineNumber,
                ),
              ),
              const SizedBox(width: 10),
            ],
            Expanded(
              child: RichText(
                text: TextSpan(
                  style: PyCodeTheme.base,
                  children: PythonMiniHighlighter.highlightLine(
                    lines[index],
                    showPrompt: withPrompt,
                  ),
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
