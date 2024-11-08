import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
// import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';
import 'package:oxygen_tech/content/services_content.dart';
import 'package:oxygen_tech/utils.dart';

import '../animations/fade_in_left.dart';
import '../animations/fade_in_right.dart';
import '../animations/fade_in_up.dart';
import '../content/testimonial_content.dart';
import '/content/about_content.dart';
import '/content/portfolio_content.dart';
import '/content/contact_content.dart';
import '/widgets/display_box_widget.dart';
import '/widgets/custom_appbar_widget.dart';
import '/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _display2Key = GlobalKey();
  final _servicesKey = GlobalKey();
  final _display5Key = GlobalKey();
  final _portfolioKey = GlobalKey();
  final _booklistKey = GlobalKey();
  final _testimonialKey = GlobalKey();
  final _display3Key = GlobalKey();
  final _aboutKey = GlobalKey();
  final _display4Key = GlobalKey();
  final _ackKey = GlobalKey();
  final _prideKey = GlobalKey();
  final _contactKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    setState(() {});
    final mediaWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: appDrawer,
      appBar: const CustomAppBarWidget(),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black45,
              Colors.black12,
            ],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              logo,
              width: mediaWidth <= 750 ? mediaWidth * 0.8 : mediaWidth * 0.4,
            ),
            SingleChildScrollView(
              controller: context.scrollController,
              child: Column(
                children: <Widget>[
                  gapH64,
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        height: mediaWidth <= 750
                            ? mediaWidth * 0.8 * 1.1979
                            : mediaWidth * 0.4 * 1.1979,
                      ),
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
                        child: Image.asset(
                          "images/display_1.png",
                          width: mediaWidth <= 750
                              ? mediaWidth * 0.8
                              : mediaWidth * 0.4,
                        ),
                      ),
                    ],
                  ),
                  gapH64,
                  DisplayBoxWidget(
                    child: Column(
                      children: [
                        gapH64,
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
                          child: Image.asset(
                            fullLogo,
                            height: 100,
                          ),
                        ),
                        gapH32,
                        Padding(
                          padding: kPadding,
                          child: Animate(
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
                            child: const Text(
                              'Oxygen Tech, or O2Tech offers a service to build performant, multi-platform applications for both mobile (iOS & Android), and web (websites & web apps).\n\n'
                              'We leverage the Flutter framework\'s multi-platform technology to streamline the process of development which leads to greater efficiency for O2Tech, and cheaper prices for our clients.\n\n'
                              'We are based on Dja Dja Wurrung Country (Central Victoria), but offer services remotely Australia-wide.\n\n'
                              'With O2Tech, you will be dealing with the same developer throughout your journey, which will lead to a personalised approach.\n\n'
                              'If you would like to get in touch and learn more, please click the orange button to navigate to our contact page.',
                              style: bodyStyle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  gapH64,
                  FadeInUp(
                    globalKey: _display2Key,
                    duration: const Duration(seconds: 3),
                    child: Image.asset(
                      "images/display_2.png",
                      width: mediaWidth <= 750
                          ? mediaWidth * 0.8
                          : mediaWidth * 0.4,
                    ),
                  ),
                  gapH64,
                  FadeInUp(
                    globalKey: _servicesKey,
                    duration: const Duration(seconds: 3),
                    child: const ServicesContent(),
                  ),
                  gapH64,
                  FadeInLeft(
                    globalKey: _display5Key,
                    duration: const Duration(seconds: 3),
                    child: Image.asset(
                      "images/display_5.png",
                      width: mediaWidth <= 750
                          ? mediaWidth * 0.8
                          : mediaWidth * 0.4,
                    ),
                  ),
                  gapH64,
                  FadeInUp(
                    globalKey: _portfolioKey,
                    duration: const Duration(seconds: 3),
                    child: const PortfolioContent(),
                  ),
                  gapH64,
                  FadeInRight(
                    globalKey: _booklistKey,
                    duration: const Duration(seconds: 3),
                    child: Image.asset(
                      "images/booklist.png",
                      width: mediaWidth <= 750
                          ? mediaWidth * 0.8
                          : mediaWidth * 0.4,
                    ),
                  ),
                  gapH64,
                  FadeInUp(
                    globalKey: _testimonialKey,
                    duration: const Duration(seconds: 3),
                    child: const TestimonialContent(),
                  ),
                  gapH64,
                  FadeInUp(
                    globalKey: _display3Key,
                    duration: const Duration(seconds: 3),
                    child: Image.asset(
                      "images/display_3.png",
                      width: mediaWidth <= 750
                          ? mediaWidth * 0.8
                          : mediaWidth * 0.4,
                    ),
                  ),
                  gapH64,
                  FadeInUp(
                    globalKey: _aboutKey,
                    duration: const Duration(seconds: 3),
                    child: const AboutContent(),
                  ),
                  gapH64,
                  FadeInUp(
                    globalKey: _display4Key,
                    duration: const Duration(seconds: 3),
                    child: Image.asset(
                      "images/display_4.png",
                      width: mediaWidth <= 750
                          ? mediaWidth * 0.8
                          : mediaWidth * 0.4,
                    ),
                  ),
                  gapH64,
                  FadeInLeft(
                    globalKey: _ackKey,
                    duration: const Duration(seconds: 3),
                    child: DisplayBoxWidget(
                      child: Padding(
                        padding: kPadding,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'images/first.png',
                                  width: 80,
                                ),
                                gapW16,
                                Image.asset(
                                  'images/torres.png',
                                  width: 80,
                                ),
                              ],
                            ),
                            gapH32,
                            const Text(
                              'Oxygen Tech acknowledges the Traditional Owners of '
                              'the land, sea and waters of the areas we live and '
                              'work on across Australia. We acknowledge their '
                              'continuing connection to their culture and pay our '
                              'respects to their Elders past and present.',
                              style: bodyStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  gapH32,
                  FadeInRight(
                    globalKey: _prideKey,
                    duration: const Duration(seconds: 3),
                    child: DisplayBoxWidget(
                      child: Padding(
                        padding: kPadding,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'images/pride.png',
                                  width: 80,
                                ),
                              ],
                            ),
                            gapH32,
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Oxygen Tech is committed to embracing diversity '
                                'and welcomes all people.',
                                style: bodyStyle,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  gapH32,
                  FadeInUp(
                    globalKey: _contactKey,
                    duration: const Duration(seconds: 3),
                    child: const ContactContent(),
                  ),
                  mediaWidth <= 750 ? gapH32 : gapH64,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
