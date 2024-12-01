import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:io';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class InfoIcon extends StatelessWidget {
  const InfoIcon({super.key});

  void _showDialog(BuildContext context, String title, String content,
      {Color? titleColor}) {
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  content,
                  style: const TextStyle(
                    fontFamily: 'InconsolataRegular',
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.normal,
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 16),
                _buildContactSection(context),
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

  Widget _buildContactSection(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          iconSize: MediaQuery.of(context).size.width * 0.05,
          icon: const Icon(FontAwesomeIcons.instagram),
          color: Colors.black,
          onPressed: () async {
            HapticFeedback.lightImpact();
            Uri url = Uri.parse("https://www.instagram.com/mrrubikdev/");
            await launchUrl(url, mode: LaunchMode.externalApplication);
          },
        ),
        SizedBox(width: MediaQuery.of(context).size.width * 0.02),
        IconButton(
          iconSize: MediaQuery.of(context).size.width * 0.05,
          icon: const Icon(FontAwesomeIcons.twitter),
          color: Colors.black,
          onPressed: () async {
            HapticFeedback.lightImpact();
            Uri url = Uri.parse("https://twitter.com/MrRubikDev");
            await launchUrl(url, mode: LaunchMode.externalApplication);
          },
        ),
        SizedBox(width: MediaQuery.of(context).size.width * 0.02),
        IconButton(
          iconSize: MediaQuery.of(context).size.width * 0.05,
          icon: const Icon(FontAwesomeIcons.youtube),
          color: Colors.black,
          onPressed: () async {
            HapticFeedback.lightImpact();
            Uri url = Uri.parse(
                "https://www.youtube.com/channel/UCHZEH3XF375ZsfpRb7kGoVw");
            await launchUrl(url, mode: LaunchMode.externalApplication);
          },
        ),
        SizedBox(width: MediaQuery.of(context).size.width * 0.02),
        IconButton(
          iconSize: MediaQuery.of(context).size.width * 0.05,
          icon: Platform.isIOS
              ? const Icon(FontAwesomeIcons.apple)
              : const Icon(FontAwesomeIcons.google),
          color: Colors.black,
          onPressed: () {
            try {
              HapticFeedback.lightImpact();
              String encodeQueryParameters(Map<String, String> params) {
                return params.entries
                    .map((MapEntry<String, String> e) =>
                        '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                    .join('&');
              }

              final Uri emailLaunchUri = Uri(
                scheme: 'mailto',
                path: 'mrrubikdev@gmail.com',
                query: encodeQueryParameters(<String, String>{
                  'subject': 'Hi, Mr Rubik',
                }),
              );

              launchUrl(emailLaunchUri);
            } catch (e) {
              debugPrint("Error launching email: $e");
            }
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.info_outline),
      onPressed: () {
        _showDialog(
          context,
          AppLocalizations.of(context)!.aboutLearnSwiftTitle,
          AppLocalizations.of(context)!.aboutLearnSwiftContent,
        );
      },
    );
  }
}
