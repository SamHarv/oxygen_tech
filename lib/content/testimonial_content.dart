import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '/widgets/display_box_widget.dart';
import '/constants.dart';

class TestimonialContent extends StatelessWidget {
  final int delay;
  const TestimonialContent({super.key, required this.delay});

  @override
  Widget build(BuildContext context) {
    return DisplayBoxWidget(
      child: Padding(
        padding: kPadding,
        child: Column(
          children: [
            Animate(
              effects: [
                SlideEffect(
                  delay: Duration(seconds: delay),
                  curve: Curves.easeIn,
                  duration: const Duration(seconds: 3),
                ),
                FadeEffect(
                  delay: Duration(seconds: delay),
                  duration: const Duration(seconds: 3),
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
              effects: [
                SlideEffect(
                  delay: Duration(seconds: delay + 1),
                  curve: Curves.easeIn,
                  duration: const Duration(seconds: 3),
                ),
                FadeEffect(
                  delay: Duration(seconds: delay + 1),
                  duration: const Duration(seconds: 3),
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
