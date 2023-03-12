// brief career background EP -> RC -> DHC -> app developer
// Established in 2023 as sole trader
// Development of web, mobile and desktop apps using Flutter and Dart
// Quick summary of Flutter & Dart (multi-platform)
// What began as a hobby is now evolving
// Would like to help small businesses create a custom webpage for a cheap price
// Happy to communicate remotely or f2f if based in Hervey Bay/ Bendigo region

import 'package:flutter/material.dart';

import '/constants.dart';
import '/widgets/custom_appbar.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double mediaWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: appDrawer,
      appBar: const CustomAppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                padding: kPadding,
                child: const Text(
                  'About',
                  textAlign: TextAlign.center,
                  style: headingStyle,
                ),
              ),
              Container(
                padding: kPadding,
                child: const Text(
                  'A public jounral of what I perceive to be the more valuable of my ideas.\n\n'
                  'Why Matter of Movement?\n\n'
                  'I initially created this webpage to write about movement as it pertains to exercise and physical activity.\n\n'
                  'I now realise that my interests are far broader.\n\n'
                  'To enable me to write about whatever I want, here is my justification for continued use of the name:\n\n'
                  'A complete cessation of movement is death, therefore life consists of continuous movement.\n\n'
                  'Matters of movement are matters of life.',
                  style: bodyStyle,
                ),
              ),
              const SizedBox(
                child: Padding(
                  padding: kPadding,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                      'images/sam.jpeg',
                    ),
                    radius: 100,
                  ),
                ),
              ),
              SizedBox(
                width: mediaWidth <= 750 ? mediaWidth * 0.8 : mediaWidth * 0.4,
                child: Padding(
                  padding: kPadding,
                  child: Image.asset(
                    fullLogo,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
