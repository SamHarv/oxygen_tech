import 'package:flutter/material.dart';

import '/widgets/display_box.dart';

import '/constants.dart';

class AboutContent extends StatelessWidget {
  const AboutContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const DisplayBox(
      child: Padding(
        padding: kPadding,
        child: Column(
          children: [
            Text(
              'About',
              textAlign: TextAlign.center,
              style: headingStyle,
            ),
            gapH32,
            Text(
              'Oxygen Tech is comprised of just one guy and a combination of caffeine, a laptop, and epistemophilia (an excessive love of, or striving for, knowledge).\n\n'
              'Oxygen Tech was established in 2023 by Sam Harvey, Flutter Developer who had the following to say:\n\n'
              '"Having transitioned from a career as an Exercise Physiologist to a Digital Health Consultant, I am becoming more and more enchanted with digital technology.\n\n'
              'In early 2020 I became interested in mobile application development due to gaps I saw in the mHealth industry, and began a course on Flutter development. What began as a hobby, is now evolving.\n\n'
              'I have since steadily honed my skills to the point where I am proficient in building both mobile and web apps, and have an intention to deepen my skill in building desktop apps.\n\n'
              'The reason I chose Flutter is because not only does it use the same codebase for multiple platforms, but it performs exceptionally well and you have the ability to control every pixel on the screen. The only limit to what you can build on the user interface is your imagination.\n\n'
              'I established Oxygen Tech as a way to continue to build apps for my own personal use, but to also help do the same for others as the implementation of an individualised application can work wonders for a business\'s brand."\n\n'
              'As a sole trader, Sam runs Oxygen Tech independently outside of normal work hours, and if you decide to engage his services, you will deal with Sam and only Sam throughout the process.',
              style: bodyStyle,
            ),
            gapH32,
            CircleAvatar(
              backgroundImage: AssetImage(
                'images/sam.jpeg',
              ),
              radius: 100,
            ),
          ],
        ),
      ),
    );
  }
}
