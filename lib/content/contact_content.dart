import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
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
          Animate(
            effects: const [
              SlideEffect(
                curve: Curves.easeIn,
                duration: Duration(seconds: 3),
              ),
              FadeEffect(
                duration: Duration(seconds: 3),
              ),
            ],
            child: const Column(
              children: [
                Text(
                  'Contact',
                  textAlign: TextAlign.center,
                  style: headingStyle,
                ),
                gapH32,
                Text(
                  'Sam Harvey\n\n'
                  'Oxygen Tech',
                  textAlign: TextAlign.center,
                  style: bodyStyle,
                ),
              ],
            ),
          ),
          gapH32,
          Animate(
            effects: const [
              SlideEffect(
                delay: Duration(seconds: 1),
                curve: Curves.easeIn,
                duration: Duration(seconds: 3),
              ),
              FadeEffect(
                delay: Duration(seconds: 1),
                duration: Duration(seconds: 3),
              ),
            ],
            child: InkWell(
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
          ),
          Animate(
            effects: const [
              SlideEffect(
                delay: Duration(seconds: 2),
                curve: Curves.easeIn,
                duration: Duration(seconds: 3),
              ),
              FadeEffect(
                delay: Duration(seconds: 2),
                duration: Duration(seconds: 3),
              ),
            ],
            child: Padding(
              padding: kPadding,
              child: Wrap(
                direction: Axis.horizontal,
                alignment: WrapAlignment.center,
                children: [
                  IconButton(
                    icon: const FaIcon(
                      FontAwesomeIcons.youtube,
                      color: Colors.black,
                    ),
                    onPressed: () => url.launchYouTubeUrl(),
                  ),
                  IconButton(
                    icon: const FaIcon(
                      FontAwesomeIcons.facebook,
                      color: Colors.black,
                    ),
                    onPressed: () => url.launchFacebookUrl(),
                  ),
                  IconButton(
                    icon: const FaIcon(
                      FontAwesomeIcons.instagram,
                      color: Colors.black,
                    ),
                    onPressed: () => url.launchInstagramUrl(),
                  ),
                  IconButton(
                    icon: const FaIcon(
                      FontAwesomeIcons.github,
                      color: Colors.black,
                    ),
                    onPressed: () => url.launchGitHubUrl(),
                  ),
                  IconButton(
                    icon: const FaIcon(
                      FontAwesomeIcons.linkedinIn,
                      color: Colors.black,
                    ),
                    onPressed: () => url.launchLinkedInUrl(),
                  ),
                ],
              ),
            ),
          ),
          Animate(
            effects: const [
              SlideEffect(
                delay: Duration(seconds: 3),
                curve: Curves.easeIn,
                duration: Duration(seconds: 3),
              ),
              FadeEffect(
                delay: Duration(seconds: 3),
                duration: Duration(seconds: 3),
              ),
            ],
            child: Row(
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
          ),
          gapH32,
        ],
      ),
    );
  }
}
