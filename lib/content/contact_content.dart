import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '/widgets/display_box.dart';

import '/constants.dart';

final Uri _gitHubUrl = Uri.parse('https://github.com/SamHarv');
final Uri _linkedInUrl =
    Uri.parse('https://www.linkedin.com/in/sam-harvey-83a182234/');

Future<void> _launchLinkedInUrl() async {
  if (!await launchUrl(_linkedInUrl)) {
    throw 'Could not launch $_linkedInUrl';
  }
}

Future<void> _launchGitHubUrl() async {
  if (!await launchUrl(_gitHubUrl)) {
    throw 'Could not launch $_gitHubUrl';
  }
}

void _sendEmail() {
  final Uri emailLaunchUri = Uri(
    scheme: 'mailto',
    path: 'oxygentech@protonmail.com',
  );
  launchUrl(emailLaunchUri); //await before launchUrl
}

class ContactContent extends StatelessWidget {
  const ContactContent({super.key});

  @override
  Widget build(BuildContext context) {
    return DisplayBox(
      children: [
        gapH12,
        const Padding(
          padding: kPadding,
          child: Text(
            'Contact',
            textAlign: TextAlign.center,
            style: headingStyle,
          ),
        ),
        const Padding(
          padding: kPadding,
          child: Text(
            'Sam Harvey\n\n'
            'Oxygen Tech',
            textAlign: TextAlign.center,
            style: bodyStyle,
          ),
        ),
        const Padding(
          padding: kPadding,
          child: TextButton(
            onPressed: _sendEmail,
            child: Text(
              'oxygentech@protonmail.com',
              style: bodyStyle,
            ),
          ),
        ),
        Padding(
          padding: kPadding,
          child: Wrap(
            direction: Axis.horizontal,
            alignment: WrapAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: const FaIcon(
                  FontAwesomeIcons.youtube,
                  color: Colors.grey,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const FaIcon(
                  FontAwesomeIcons.medium,
                  color: Colors.grey,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.github),
                onPressed: () => _launchGitHubUrl(),
              ),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.linkedinIn),
                onPressed: () => _launchLinkedInUrl(),
              ),
              IconButton(
                icon: const FaIcon(
                  FontAwesomeIcons.twitter,
                  color: Colors.grey,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const FaIcon(
                  FontAwesomeIcons.facebook,
                  color: Colors.grey,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const FaIcon(
                  FontAwesomeIcons.instagram,
                  color: Colors.grey,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
        gapH12,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              onPressed: () => context.go('/privacy'),
              child: const Text(
                'Privacy Policy',
                style: TextStyle(
                  color: kColor,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            const SizedBox(width: 12),
            TextButton(
              onPressed: () => context.go('/terms'),
              child: const Text(
                'Terms of Use',
                style: TextStyle(
                  color: kColor,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
