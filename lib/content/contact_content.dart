import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '/services/url_launcher_service.dart';
import '/widgets/display_box_widget.dart';
import '/constants.dart';

class ContactContent extends StatelessWidget {
  const ContactContent({super.key});

  @override
  Widget build(BuildContext context) {
    final url = UrlLauncherService();

    return DisplayBoxWidget(
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
            onPressed: url.sendEmail,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(colour),
            ),
            child: const Text(
              'oxygentech@protonmail.com',
              style: TextStyle(
                fontSize: 20.0,
                color: thirdColour,
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
                  icon: const FaIcon(FontAwesomeIcons.youtube),
                  onPressed: () => url.launchYouTubeUrl(),
                ),
                IconButton(
                  icon: const FaIcon(FontAwesomeIcons.facebook),
                  onPressed: () => url.launchFacebookUrl(),
                ),
                IconButton(
                  icon: const FaIcon(FontAwesomeIcons.instagram),
                  onPressed: () => url.launchInstagramUrl(),
                ),
                IconButton(
                  icon: const FaIcon(FontAwesomeIcons.github),
                  onPressed: () => url.launchGitHubUrl(),
                ),
                IconButton(
                  icon: const FaIcon(FontAwesomeIcons.linkedinIn),
                  onPressed: () => url.launchLinkedInUrl(),
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
