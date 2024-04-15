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
          InkWell(
            borderRadius: BorderRadius.circular(32),
            onTap: url.sendEmail,
            child: Container(
              height: 45,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.blue[700],
                borderRadius: BorderRadius.circular(32),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[600]!,
                    spreadRadius: 1,
                    blurRadius: 15,
                    offset: const Offset(4, 4),
                  ),
                  const BoxShadow(
                    color: Colors.white,
                    spreadRadius: 1,
                    blurRadius: 15,
                    offset: Offset(-4, -4),
                  ),
                ],
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.blue[600]!,
                    Colors.blue[700]!,
                    Colors.blue[800]!,
                    Colors.blue[900]!,
                  ],
                  stops: const [0.1, 0.3, 0.8, 1],
                ),
              ),
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: Text(
                    'oxygentech@protonmail.com',
                    style: TextStyle(color: thirdColour, fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
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
