import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../content/testimonial_content.dart';
import '/content/services_content.dart';
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
  bool introTextInvisible = true;

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();
    final mediaWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: appDrawer,
      appBar: const CustomAppBarWidget(),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black45.withOpacity(0.7),
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
              controller: scrollController,
              child: Column(
                children: <Widget>[
                  gapH64,
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
                  Animate(
                    effects: const [
                      SlideEffect(
                        delay: Duration(seconds: 5),
                        curve: Curves.easeIn,
                        duration: Duration(seconds: 3),
                      ),
                      FadeEffect(
                        delay: Duration(seconds: 5),
                        duration: Duration(seconds: 3),
                      ),
                    ],
                    child: Image.asset(
                      "images/display_2.png",
                      width: mediaWidth <= 750
                          ? mediaWidth * 0.8
                          : mediaWidth * 0.4,
                    ),
                  ),
                  gapH64,
                  const ServicesContent(delay: 7),
                  gapH64,
                  Animate(
                    effects: const [
                      SlideEffect(
                        delay: Duration(seconds: 13),
                        curve: Curves.easeIn,
                        duration: Duration(seconds: 3),
                      ),
                      FadeEffect(
                        delay: Duration(seconds: 13),
                        duration: Duration(seconds: 3),
                      ),
                    ],
                    child: Image.asset(
                      "images/display_5.png",
                      width: mediaWidth <= 750
                          ? mediaWidth * 0.8
                          : mediaWidth * 0.4,
                    ),
                  ),
                  gapH64,
                  const PortfolioContent(delay: 15),
                  gapH64,
                  Animate(
                    effects: const [
                      SlideEffect(
                        delay: Duration(seconds: 23),
                        curve: Curves.easeIn,
                        duration: Duration(seconds: 3),
                      ),
                      FadeEffect(
                        delay: Duration(seconds: 23),
                        duration: Duration(seconds: 3),
                      ),
                    ],
                    child: Image.asset(
                      "images/booklist.png",
                      width: mediaWidth <= 750
                          ? mediaWidth * 0.8
                          : mediaWidth * 0.4,
                    ),
                  ),
                  gapH64,
                  const TestimonialContent(delay: 25),
                  gapH64,
                  Animate(
                    effects: const [
                      SlideEffect(
                        delay: Duration(seconds: 28),
                        curve: Curves.easeIn,
                        duration: Duration(seconds: 3),
                      ),
                      FadeEffect(
                        delay: Duration(seconds: 28),
                        duration: Duration(seconds: 3),
                      ),
                    ],
                    child: Image.asset(
                      "images/display_3.png",
                      width: mediaWidth <= 750
                          ? mediaWidth * 0.8
                          : mediaWidth * 0.4,
                    ),
                  ),
                  gapH64,
                  const AboutContent(delay: 30),
                  gapH64,
                  Animate(
                    effects: const [
                      SlideEffect(
                        delay: Duration(seconds: 34),
                        curve: Curves.easeIn,
                        duration: Duration(seconds: 3),
                      ),
                      FadeEffect(
                        delay: Duration(seconds: 34),
                        duration: Duration(seconds: 3),
                      ),
                    ],
                    child: Image.asset(
                      "images/display_4.png",
                      width: mediaWidth <= 750
                          ? mediaWidth * 0.8
                          : mediaWidth * 0.4,
                    ),
                  ),
                  gapH64,
                  Animate(
                    effects: const [
                      SlideEffect(
                        delay: Duration(seconds: 36),
                        curve: Curves.easeIn,
                        duration: Duration(seconds: 3),
                      ),
                      FadeEffect(
                        delay: Duration(seconds: 36),
                        duration: Duration(seconds: 3),
                      ),
                    ],
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
                  Animate(
                    effects: const [
                      SlideEffect(
                        delay: Duration(seconds: 38),
                        curve: Curves.easeIn,
                        duration: Duration(seconds: 3),
                      ),
                      FadeEffect(
                        delay: Duration(seconds: 38),
                        duration: Duration(seconds: 3),
                      ),
                    ],
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
                  const ContactContent(delay: 40),
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
