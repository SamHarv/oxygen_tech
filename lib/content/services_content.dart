import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '/widgets/contact_button_widget.dart';
import '/widgets/display_box_widget.dart';
import '/constants.dart';

class ServicesContent extends StatelessWidget {
  const ServicesContent({super.key});

  @override
  Widget build(BuildContext context) {
    return DisplayBoxWidget(
      child: Padding(
        padding: kPadding,
        child: Column(
          children: [
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
                    'Services',
                    textAlign: TextAlign.center,
                    style: headingStyle,
                  ),
                  gapH32,
                  Text(
                    'Services offered by Oxygen Tech.',
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
              child: const Column(
                children: [
                  Text(
                    'Software Development',
                    textAlign: TextAlign.center,
                    style: headingStyle,
                  ),
                  gapH32,
                  Text(
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
                ],
              ),
            ),
            gapH32,
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
              child: const ContactButtonWidget(),
            ),
            gapH32,
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
              child: const Column(
                children: [
                  Text(
                    'Tutoring',
                    textAlign: TextAlign.center,
                    style: headingStyle,
                  ),
                  gapH32,
                  Text(
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
                ],
              ),
            ),
            gapH32,
            Animate(
              effects: const [
                SlideEffect(
                  delay: Duration(seconds: 4),
                  curve: Curves.easeIn,
                  duration: Duration(seconds: 3),
                ),
                FadeEffect(
                  delay: Duration(seconds: 4),
                  duration: Duration(seconds: 3),
                ),
              ],
              child: const ContactButtonWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
