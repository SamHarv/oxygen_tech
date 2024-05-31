import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '/services/url_launcher_service.dart';
import '/widgets/horizontal_app_widget.dart';
import '/widgets/vertical_app_widget.dart';
import '/widgets/display_box_widget.dart';
import '/constants.dart';

class PortfolioContent extends StatelessWidget {
  const PortfolioContent({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaWidth = MediaQuery.of(context).size.width;
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
                  'Portfolio',
                  textAlign: TextAlign.center,
                  style: headingStyle,
                ),
                Padding(
                  padding: kPadding,
                  child: Text(
                    'Click the tile to test the app through your browser or be '
                    'directed to the Play Store or App Store.',
                    style: bodyStyle,
                  ),
                ),
              ],
            ),
          ),
          mediaWidth < 750
              ? Column(
                  children: [
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
                          const Text(
                            'Sam\'s Booklist',
                            textAlign: TextAlign.center,
                            style: headingStyle,
                          ),
                          gapH32,
                          VerticalAppWidget(
                            onTap: url.launchBooklistUrl,
                            screenshotPath: 'images/booklist.png',
                            height: mediaWidth < 750
                                ? mediaWidth * 0.9
                                : mediaWidth * 0.8,
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
                      child: Column(
                        children: [
                          const Text(
                            'Plans',
                            textAlign: TextAlign.center,
                            style: headingStyle,
                          ),
                          gapH32,
                          VerticalAppWidget(
                            onTap: url.launchPlansAppStore,
                            screenshotPath: 'images/plans_tile.png',
                            height: mediaWidth < 750
                                ? mediaWidth * 0.9
                                : mediaWidth * 0.8,
                          ),
                          gapH16,
                          VerticalAppWidget(
                            screenshotPath: 'images/appstore.png',
                            height: mediaWidth * 0.125,
                            onTap: url.launchPlansAppStore,
                          ),
                          gapH16,
                          VerticalAppWidget(
                            screenshotPath: 'images/playstore.png',
                            height: mediaWidth * 0.125,
                            onTap: url.launchPlansUrl,
                          ),
                        ],
                      ),
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
                      child: Column(
                        children: [
                          const Text(
                            'Task Management App',
                            textAlign: TextAlign.center,
                            style: headingStyle,
                          ),
                          gapH32,
                          VerticalAppWidget(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: const Text('Task Management App'),
                                      content: const Text(
                                          'This app is currently in development.'),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: const Text('Close'),
                                        ),
                                      ],
                                    );
                                  });
                            },
                            screenshotPath: 'images/planner.png',
                            height: mediaWidth < 750
                                ? mediaWidth * 0.9
                                : mediaWidth * 0.8,
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
                      child: Column(
                        children: [
                          const Text(
                            'Brighter Tomorrow',
                            textAlign: TextAlign.center,
                            style: headingStyle,
                          ),
                          gapH32,
                          VerticalAppWidget(
                            onTap: url.launchBrighterTomorrowUrl,
                            screenshotPath: 'images/brighter_tomorrow_tile.png',
                            height: mediaWidth < 750
                                ? mediaWidth * 0.9
                                : mediaWidth * 0.8,
                          ),
                        ],
                      ),
                    ),
                    gapH32,
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
                      child: Column(
                        children: [
                          const Text(
                            'Matter of Movement',
                            textAlign: TextAlign.center,
                            style: headingStyle,
                          ),
                          gapH32,
                          VerticalAppWidget(
                            onTap: url.launchMoMUrl,
                            screenshotPath: 'images/MoM_tile_dark.png',
                            height: mediaWidth < 750
                                ? mediaWidth * 0.9
                                : mediaWidth * 0.8,
                          ),
                        ],
                      ),
                    ),
                    gapH32,
                    Animate(
                      effects: const [
                        SlideEffect(
                          delay: Duration(seconds: 6),
                          curve: Curves.easeIn,
                          duration: Duration(seconds: 3),
                        ),
                        FadeEffect(
                          delay: Duration(seconds: 6),
                          duration: Duration(seconds: 3),
                        ),
                      ],
                      child: Column(
                        children: [
                          const Text(
                            'Digby',
                            textAlign: TextAlign.center,
                            style: headingStyle,
                          ),
                          gapH32,
                          HorizontalAppWidget(
                            onTap: url.launchDigbyAppStore,
                            screenshotPath: 'images/digby_tile.png',
                            width: mediaWidth < 750
                                ? mediaWidth * 0.9
                                : mediaWidth * 0.8,
                          ),
                          gapH16,
                          VerticalAppWidget(
                            screenshotPath: 'images/appstore.png',
                            height: mediaWidth * 0.125,
                            onTap: url.launchDigbyAppStore,
                          ),
                          gapH16,
                          VerticalAppWidget(
                            screenshotPath: 'images/playstore.png',
                            height: mediaWidth * 0.125,
                            onTap: url.launchDigbyUrl,
                          ),
                          gapH16,
                          TextButton(
                            onPressed: url.launchDigbyWebUrl,
                            child: const Text(
                              'Play Digby in your browser',
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
                    gapH32,
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    gapW32,
                    Column(
                      children: [
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
                              const Text(
                                'Sam\'s Booklist',
                                textAlign: TextAlign.center,
                                style: headingStyle,
                              ),
                              gapH32,
                              VerticalAppWidget(
                                onTap: url.launchBooklistUrl,
                                screenshotPath: 'images/booklist.png',
                                height: mediaWidth < 750
                                    ? (mediaWidth * 0.45) - 48
                                    : (mediaWidth * 0.4) - 48,
                              ),
                            ],
                          ),
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
                          child: Column(
                            children: [
                              const Text(
                                'Plans',
                                textAlign: TextAlign.center,
                                style: headingStyle,
                              ),
                              gapH32,
                              VerticalAppWidget(
                                onTap: url.launchPlansAppStore,
                                screenshotPath: 'images/plans_tile.png',
                                height: mediaWidth < 750
                                    ? (mediaWidth * 0.45) - 48
                                    : (mediaWidth * 0.4) - 48,
                              ),
                              gapH16,
                              VerticalAppWidget(
                                screenshotPath: 'images/appstore.png',
                                height: mediaWidth * 0.048,
                                onTap: url.launchPlansAppStore,
                              ),
                              gapH16,
                              VerticalAppWidget(
                                screenshotPath: 'images/playstore.png',
                                height: mediaWidth * 0.048,
                                onTap: url.launchPlansUrl,
                              ),
                            ],
                          ),
                        ),
                        gapH32,
                        Animate(
                          effects: const [
                            SlideEffect(
                              delay: Duration(seconds: 6),
                              curve: Curves.easeIn,
                              duration: Duration(seconds: 3),
                            ),
                            FadeEffect(
                              delay: Duration(seconds: 6),
                              duration: Duration(seconds: 3),
                            ),
                          ],
                          child: Column(
                            children: [
                              const Text(
                                'Matter of Movement',
                                textAlign: TextAlign.center,
                                style: headingStyle,
                              ),
                              gapH32,
                              VerticalAppWidget(
                                onTap: url.launchMoMUrl,
                                screenshotPath: 'images/MoM_tile_dark.png',
                                height: mediaWidth < 750
                                    ? (mediaWidth * 0.45) - 48
                                    : (mediaWidth * 0.4) - 48,
                              ),
                            ],
                          ),
                        ),
                        gapH32,
                        // Remove below SizedBox when another landscape app
                        // is added to the portfolio. This helps alignment
                        SizedBox(
                          width: mediaWidth < 750
                              ? (mediaWidth * 0.45) - 48
                              : (mediaWidth * 0.4) - 48,
                        ),
                      ],
                    ),
                    gapW32,
                    Column(
                      children: [
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
                          child: Column(
                            children: [
                              const Text(
                                'Task Management App',
                                textAlign: TextAlign.center,
                                style: headingStyle,
                              ),
                              gapH32,
                              VerticalAppWidget(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          title:
                                              const Text('Task Management App'),
                                          content: const Text(
                                              'This app is currently in development.'),
                                          actions: [
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: const Text('Close'),
                                            ),
                                          ],
                                        );
                                      });
                                },
                                screenshotPath: 'images/planner.png',
                                height: mediaWidth < 750
                                    ? (mediaWidth * 0.45) - 48
                                    : (mediaWidth * 0.4) - 48,
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
                          child: Column(
                            children: [
                              const Text(
                                'Brighter Tomorrow',
                                textAlign: TextAlign.center,
                                style: headingStyle,
                              ),
                              gapH32,
                              VerticalAppWidget(
                                onTap: url.launchBrighterTomorrowUrl,
                                screenshotPath:
                                    'images/brighter_tomorrow_tile.png',
                                height: mediaWidth < 750
                                    ? (mediaWidth * 0.45) - 48
                                    : (mediaWidth * 0.4) - 48,
                              ),
                            ],
                          ),
                        ),
                        gapH32,
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
                          child: Column(
                            children: [
                              const Text(
                                'Digby',
                                textAlign: TextAlign.center,
                                style: headingStyle,
                              ),
                              gapH32,
                              HorizontalAppWidget(
                                onTap: url.launchDigbyAppStore,
                                screenshotPath: 'images/digby_tile.png',
                                width: mediaWidth < 750
                                    ? (mediaWidth * 0.45) - 48
                                    : (mediaWidth * 0.4) - 48,
                              ),
                              gapH16,
                              VerticalAppWidget(
                                screenshotPath: 'images/appstore.png',
                                height: mediaWidth * 0.048,
                                onTap: url.launchDigbyAppStore,
                              ),
                              gapH16,
                              VerticalAppWidget(
                                screenshotPath: 'images/playstore.png',
                                height: mediaWidth * 0.048,
                                onTap: url.launchDigbyUrl,
                              ),
                              gapH16,
                              TextButton(
                                onPressed: url.launchDigbyWebUrl,
                                child: const Text(
                                  'Play Digby in your browser',
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
                        gapH32,
                      ],
                    ),
                    gapW32,
                  ],
                ),
        ],
      ),
    );
  }
}
