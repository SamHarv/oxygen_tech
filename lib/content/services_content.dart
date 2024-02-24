import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

import '/widgets/display_box.dart';

import '/constants.dart';

class ServicesContent extends StatelessWidget {
  const ServicesContent({super.key});

  @override
  Widget build(BuildContext context) {
    return DisplayBox(
      child: Padding(
        padding: kPadding,
        child: Column(
          children: [
            const Text(
              'Services',
              textAlign: TextAlign.center,
              style: headingStyle,
            ),
            gapH32,
            const Text(
              'Services offered by Oxygen Tech.',
              style: bodyStyle,
            ),
            gapH32,
            const Text(
              'Software Development',
              textAlign: TextAlign.center,
              style: headingStyle,
            ),
            gapH32,
            const Text(
              'Oxygen Tech offers software development services for mobile '
              'and/ or web applications with Flutter.\n\n'
              'We can help you with the entire software development lifecycle, '
              'from the initial planning and design to the final deployment '
              'and maintenance of your application.\n\n'
              'We can help you decide which platform to develop for, and '
              'tailor our development to your preferences.\n\n'
              'If you would like to learn more or have a no-cost chat about '
              'what we can offer, please press the contact button below.',
              style: bodyStyle,
            ),
            gapH32,
            TextButton(
              onPressed: () => Beamer.of(context).beamToNamed('/contact'),
              child: const Text(
                'Contact',
                style: TextStyle(
                  fontSize: 16.0,
                  color: colour,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            gapH32,
            const Text(
              'Tutoring',
              textAlign: TextAlign.center,
              style: headingStyle,
            ),
            gapH32,
            const Text(
              'Oxygen Tech offers tutoring services on fundamental computer '
              'science and programming principles with programming languages '
              'and frameworks such as Flutter and Dart, Python, and Java.\n\n'
              'This is ideal for those who have little to no programming '
              'experience and want to learn how to code. No prior knowledge '
              'or experience is needed!\n\n'
              'We can help you decide which programming language to learn '
              'depending on your aspirations, and tailor our teching to your '
              'preferences.\n\n'
              'If you would like to learn more or have a no-cost chat about '
              'what we can offer, please press the contact button below.',
              style: bodyStyle,
            ),
            gapH32,
            TextButton(
              onPressed: () => Beamer.of(context).beamToNamed('/contact'),
              child: const Text(
                'Contact',
                style: TextStyle(
                  fontSize: 16.0,
                  color: colour,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
