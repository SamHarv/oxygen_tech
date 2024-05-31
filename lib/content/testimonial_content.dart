import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '/widgets/display_box_widget.dart';
import '/constants.dart';

class TestimonialContent extends StatelessWidget {
  const TestimonialContent({super.key});

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
              child: const Text(
                'Testimonials',
                textAlign: TextAlign.center,
                style: headingStyle,
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
              child: Column(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage(
                      'images/josh.jpeg',
                    ),
                    radius: 80,
                  ),
                  gapH32,
                  const Text(
                    'Joshua Morrow',
                    textAlign: TextAlign.center,
                    style: bodyStyle,
                  ),
                  Text(
                    'Brighter Tomorrow Exercise Physiology',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, color: Colors.grey[600]),
                  ),
                  gapH32,
                  const Text(
                    '"Oxygen Tech have been fantastic in helping us get our business '
                    'website set up - easy to contact with a wide range of '
                    'customisation possible to meet our needs. Sam has great '
                    'attention to detail and has built a strong skill set for coding."',
                    style: bodyStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
