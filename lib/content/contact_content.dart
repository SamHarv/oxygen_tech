import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/display_box_widget.dart';
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

void _sendEmail() async {
  final Uri emailLaunchUri = Uri(
    scheme: 'mailto',
    path: 'oxygentech@protonmail.com',
  );
  await launchUrl(emailLaunchUri);
}

class ContactContent extends StatelessWidget {
  const ContactContent({super.key});

  @override
  Widget build(BuildContext context) {
    return DisplayBox(
      child: Column(
        children: [
          gapH32,
          const Text(
            'Contact',
            textAlign: TextAlign.center,
            style: headingStyle,
          ),
          gapH32,
          const Text(
            'Sam Harvey\n\n'
            'Oxygen Tech',
            textAlign: TextAlign.center,
            style: bodyStyle,
          ),
          gapH32,
          ElevatedButton(
            onPressed: _sendEmail,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(colour),
            ),
            child: const Text(
              'oxygentech@protonmail.com',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: kPadding,
            child: Wrap(
              direction: Axis.horizontal,
              alignment: WrapAlignment.center,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              TextButton(
                onPressed: () => Beamer.of(context).beamToNamed('/privacy'),
                child: const Text(
                  'Privacy Policy',
                  style: TextStyle(
                    color: colour,
                    decoration: TextDecoration.underline,
                    fontSize: 16,
                  ),
                ),
              ),
              gapW16,
              TextButton(
                onPressed: () => Beamer.of(context).beamToNamed('/terms'),
                child: const Text(
                  'Terms of Use',
                  style: TextStyle(
                    color: colour,
                    decoration: TextDecoration.underline,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          gapH32,
        ],
      ),
    );
  }
}
