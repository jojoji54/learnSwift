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

enum CodeLanguage { python, javascript }

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
    // Mejora mínima: detectar '#' fuera de strings (para no romper casos raros)
    final split = _splitPythonComment(line);
    final codePart = split.code;
    final commentPart = split.comment;

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

  static _Split _splitPythonComment(String line) {
    bool inSingle = false;
    bool inDouble = false;
    bool escaped = false;

    for (int i = 0; i < line.length; i++) {
      final ch = line[i];

      if (escaped) {
        escaped = false;
        continue;
      }

      if (ch == r'\') {
        if (inSingle || inDouble) escaped = true;
        continue;
      }

      if (ch == "'" && !inDouble) {
        inSingle = !inSingle;
        continue;
      }

      if (ch == '"' && !inSingle) {
        inDouble = !inDouble;
        continue;
      }

      if (ch == '#' && !inSingle && !inDouble) {
        return _Split(line.substring(0, i), line.substring(i));
      }
    }

    return _Split(line, null);
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

class JavaScriptMiniHighlighter {
  static final Set<String> _keywords = {
    'const','let','var','function','return',
    'if','else','for','while','do','switch','case',
    'break','continue',
    'try','catch','finally','throw',
    'new','class','extends','super','this',
    'typeof','instanceof','in','of',
    'async','await',
    'import','export','default',
    'true','false','null','undefined'
  };

  static final Set<String> _builtins = {
    'console','log',
    'Math','Number','String','Boolean',
    'Array','Object','JSON','Date',
    'parseInt','parseFloat',
    'setTimeout','setInterval',
    'Promise'
  };

  // Strings JS: "..."  '...'  `...`  (sin meternos en interpolaciones por ahora)
  static final RegExp _stringRegex = RegExp(
    r'''("([^"\\]|\\.)*"|'([^'\\]|\\.)*'|`([^`\\]|\\.)*`)''',
  );

  static final RegExp _numberRegex = RegExp(r'\b\d+(\.\d+)?\b');
  static final RegExp _identifierRegex = RegExp(r'\b[A-Za-z_$][\w$]*\b');

  static List<TextSpan> highlightLine(String line, {bool showPrompt = false}) {
    // Prompt no tiene sentido en JS, pero lo dejamos por compatibilidad
    final split = _splitJsComment(line);
    final codePart = split.code;
    final commentPart = split.comment;

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

  // Detecta // o /* ... (en la misma línea) fuera de strings/backticks
  static _Split _splitJsComment(String line) {
    bool inSingle = false;
    bool inDouble = false;
    bool inBacktick = false;
    bool escaped = false;

    for (int i = 0; i < line.length; i++) {
      final ch = line[i];

      if (escaped) {
        escaped = false;
        continue;
      }

      if (ch == r'\') {
        if (inSingle || inDouble || inBacktick) escaped = true;
        continue;
      }

      if (ch == "'" && !inDouble && !inBacktick) {
        inSingle = !inSingle;
        continue;
      }

      if (ch == '"' && !inSingle && !inBacktick) {
        inDouble = !inDouble;
        continue;
      }

      if (ch == '`' && !inSingle && !inDouble) {
        inBacktick = !inBacktick;
        continue;
      }

      if (!inSingle && !inDouble && !inBacktick) {
        if (i + 1 < line.length) {
          final two = line.substring(i, i + 2);
          if (two == '//' || two == '/*') {
            return _Split(line.substring(0, i), line.substring(i));
          }
        }
      }
    }

    return _Split(line, null);
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
  final CodeLanguage language;

  const CodePreview({
    super.key,
    required this.lines,
    this.withLineNumbers = true,
    this.withPrompt = false,
    this.language = CodeLanguage.python, // ✅ por defecto no rompes nada
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(lines.length, (index) {
        final lineNo = index + 1;

        final children = language == CodeLanguage.javascript
            ? JavaScriptMiniHighlighter.highlightLine(
                lines[index],
                showPrompt: withPrompt,
              )
            : PythonMiniHighlighter.highlightLine(
                lines[index],
                showPrompt: withPrompt,
              );

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
                  children: children,
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}

class _Split {
  final String code;
  final String? comment;
  _Split(this.code, this.comment);
}
