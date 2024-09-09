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
          const Column(
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
          )
              .animate()
              .slide(duration: const Duration(seconds: 3))
              .fade(duration: const Duration(seconds: 3)),
          mediaWidth < 750
              ? Column(
                  children: [
                    Column(
                      children: [
                        const Text(
                          'grids.',
                          textAlign: TextAlign.center,
                          style: headingStyle,
                        ),
                        gapH32,
                        VerticalAppWidget(
                          onTap: url.launchGridsAppStore,
                          screenshotPath: 'images/grids.png',
                          height: mediaWidth < 750
                              ? mediaWidth * 0.9
                              : mediaWidth * 0.8,
                        ),
                        gapH16,
                        VerticalAppWidget(
                          screenshotPath: 'images/appstore.png',
                          height: mediaWidth * 0.125,
                          onTap: url.launchGridsAppStore,
                        ),
                        gapH16,
                        VerticalAppWidget(
                          screenshotPath: 'images/playstore.png',
                          height: mediaWidth * 0.125,
                          onTap: url.launchGridsPlayStore,
                        ),
                      ],
                    )
                        .animate()
                        .slideX(
                          duration: const Duration(seconds: 3),
                          delay: const Duration(seconds: 2),
                        )
                        .fade(
                          duration: const Duration(seconds: 3),
                          delay: const Duration(seconds: 2),
                        ),
                    gapH32,
                    Column(
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
                    )
                        .animate()
                        .slideX(
                          duration: const Duration(seconds: 3),
                          delay: const Duration(seconds: 1),
                          // right to left
                          begin: 0.5,
                          end: 0,
                        )
                        .fade(
                          duration: const Duration(seconds: 3),
                          delay: const Duration(seconds: 1),
                        ),
                    gapH32,
                    Column(
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
                    )
                        .animate()
                        .slideX(
                          duration: const Duration(seconds: 3),
                          delay: const Duration(seconds: 2),
                        )
                        .fade(
                          duration: const Duration(seconds: 3),
                          delay: const Duration(seconds: 2),
                        ),
                    gapH32,
                    Column(
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
                                        child: const Text('Close',
                                            style:
                                                TextStyle(color: Colors.white)),
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
                    )
                        .animate()
                        .slideX(
                          duration: const Duration(seconds: 3),
                          delay: const Duration(seconds: 3),
                          // right to left
                          begin: 0.5,
                          end: 0,
                        )
                        .fade(
                          duration: const Duration(seconds: 3),
                          delay: const Duration(seconds: 3),
                        ),
                    gapH32,
                    Column(
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
                    )
                        .animate()
                        .slideX(
                          duration: const Duration(seconds: 3),
                          delay: const Duration(seconds: 4),
                        )
                        .fade(
                          duration: const Duration(seconds: 3),
                          delay: const Duration(seconds: 4),
                        ),
                    gapH32,
                    Column(
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
                    )
                        .animate()
                        .slideX(
                          duration: const Duration(seconds: 3),
                          delay: const Duration(seconds: 5),
                          // right to left
                          begin: 0.5,
                          end: 0,
                        )
                        .fade(
                          duration: const Duration(seconds: 3),
                          delay: const Duration(seconds: 5),
                        ),
                    gapH32,
                    Column(
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
                    )
                        .animate()
                        .slideX(
                          duration: const Duration(seconds: 3),
                          delay: const Duration(seconds: 6),
                        )
                        .fade(
                          duration: const Duration(seconds: 3),
                          delay: const Duration(seconds: 6),
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
                        Column(
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
                        )
                            .animate()
                            .slideX(
                              duration: const Duration(seconds: 3),
                              delay: const Duration(seconds: 1),
                            )
                            .fade(
                              duration: const Duration(seconds: 3),
                              delay: const Duration(seconds: 1),
                            ),
                        gapH32,
                        Column(
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
                        )
                            .animate()
                            .slideX(
                              duration: const Duration(seconds: 3),
                              delay: const Duration(seconds: 3),
                            )
                            .fade(
                              duration: const Duration(seconds: 3),
                              delay: const Duration(seconds: 3),
                            ),
                        gapH32,
                        Column(
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
                        )
                            .animate()
                            .slideX(
                              duration: const Duration(seconds: 3),
                              delay: const Duration(seconds: 5),
                            )
                            .fade(
                              duration: const Duration(seconds: 3),
                              delay: const Duration(seconds: 5),
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
                        Column(
                          children: [
                            const Text(
                              'grids.',
                              textAlign: TextAlign.center,
                              style: headingStyle,
                            ),
                            gapH32,
                            VerticalAppWidget(
                              onTap: url.launchGridsAppStore,
                              screenshotPath: 'images/grids.png',
                              height: mediaWidth < 750
                                  ? (mediaWidth * 0.45) - 48
                                  : (mediaWidth * 0.4) - 48,
                            ),
                            gapH16,
                            VerticalAppWidget(
                              screenshotPath: 'images/appstore.png',
                              height: mediaWidth * 0.048,
                              onTap: url.launchGridsAppStore,
                            ),
                            gapH16,
                            VerticalAppWidget(
                              screenshotPath: 'images/playstore.png',
                              height: mediaWidth * 0.048,
                              onTap: url.launchGridsPlayStore,
                            ),
                          ],
                        )
                            .animate()
                            .slideX(
                              duration: const Duration(seconds: 3),
                              delay: const Duration(seconds: 2),
                            )
                            .fade(
                              duration: const Duration(seconds: 3),
                              delay: const Duration(seconds: 2),
                            ),
                        gapH32,
                        Column(
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
                                            child: const Text('Close',
                                                style: TextStyle(
                                                    color: Colors.white)),
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
                        )
                            .animate()
                            .slideX(
                              duration: const Duration(seconds: 3),
                              delay: const Duration(seconds: 2),
                              // right to left
                              begin: 0.5,
                              end: 0,
                            )
                            .fade(
                              duration: const Duration(seconds: 3),
                              delay: const Duration(seconds: 2),
                            ),
                        gapH32,
                        Column(
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
                        )
                            .animate()
                            .slideX(
                              duration: const Duration(seconds: 3),
                              delay: const Duration(seconds: 4),
                              // right to left
                              begin: 0.5,
                              end: 0,
                            )
                            .fade(
                              duration: const Duration(seconds: 3),
                              delay: const Duration(seconds: 4),
                            ),
                        gapH32,
                        Column(
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
                        )
                            .animate()
                            .slideX(
                              duration: const Duration(seconds: 3),
                              delay: const Duration(seconds: 6),
                              // right to left
                              begin: 0.5,
                              end: 0,
                            )
                            .fade(
                              duration: const Duration(seconds: 3),
                              delay: const Duration(seconds: 6),
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
