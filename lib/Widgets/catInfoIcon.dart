import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/l10n/category_info.dart';

class CatInfoIcon extends StatelessWidget {
  String description;
  CatInfoIcon({super.key, required this.description});

  void _showDialog(BuildContext context, String content, {Color? titleColor}) {
    final loc = AppLocalizations.of(context);
    String resolvedContent = content;
    String? resolvedTitle;

    if (loc != null && _looksLikeCategoryInfoKey(content)) {
      resolvedContent = CategoryInfoL10n.content(loc, content);
      final titleKey = content.replaceFirst('InfoContent', 'InfoTitle');
      resolvedTitle = CategoryInfoL10n.title(loc, titleKey);
    }

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Center(
            child: Text(
              resolvedTitle ?? '📚',
              style: TextStyle(
                fontFamily: 'InconsolataRegular',
                fontWeight: FontWeight.bold,
                color: titleColor ?? Colors.black,
              ),
            ),
          ),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  resolvedContent,
                  style: const TextStyle(
                    fontFamily: 'InconsolataRegular',
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.normal,
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 16),
              ],
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

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.info_outline),
      onPressed: () {
        _showDialog(
          context,
          description,
        );
      },
    );
  }

  bool _looksLikeCategoryInfoKey(String value) {
    return value.contains('Cat') && value.endsWith('InfoContent');
  }
}
