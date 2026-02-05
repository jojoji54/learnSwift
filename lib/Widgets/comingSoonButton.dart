import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ComingSoonButton extends StatelessWidget {
  const ComingSoonButton({super.key});

  List<CourseModel> _courses(AppLocalizations l10n) => [
        CourseModel(id: 10, name: l10n.cs_classesAndStructures),
        CourseModel(id: 11, name: l10n.cs_enumerations),
        CourseModel(id: 12, name: l10n.cs_protocolsAndDelegation),
        CourseModel(id: 13, name: l10n.cs_closures),
        CourseModel(id: 14, name: l10n.cs_errorHandling),
        CourseModel(id: 16, name: l10n.cs_advancedSwift),
        CourseModel(id: 17, name: l10n.cs_memoryManagement),
        CourseModel(id: 18, name: l10n.cs_filesAndData),
        CourseModel(id: 19, name: l10n.cs_uiBasicsBonusApps),
      ];

  void _showComingSoonDialog(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final courses = _courses(l10n);

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            l10n.comingSoonTitle,
            style: const TextStyle(
              fontFamily: 'InconsolataBold',
              fontWeight: FontWeight.bold,
            ),
          ),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l10n.comingSoonBody, // 👈 mejor separar body del label
                  style: const TextStyle(
                    fontFamily: 'InconsolataRegular',
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: courses.map((course) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Row(
                        children: [
                          const Icon(Icons.circle, size: 8, color: Colors.black54),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              course.name,
                              style: const TextStyle(
                                fontFamily: 'InconsolataRegular',
                                fontSize: 14,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(l10n.commonClose),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxHeight: 120,
          maxWidth: 1000,
          minWidth: 120,
        ),
        child: ElevatedButton(
          onPressed: () => _showComingSoonDialog(context),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFf3f4f2),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.symmetric(vertical: 16),
          ),
          child: Text(
            l10n.comingSoonButton, // label del botón
            style: const TextStyle(
              fontFamily: 'InconsolataBold',
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

class CourseModel {
  final int id;
  final String name;

  const CourseModel({
    required this.id,
    required this.name,
  });
}
