import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '/widgets/horizontal_app_card.dart';
import '/widgets/vertical_app_card.dart';
import '/widgets/display_box.dart';

import '/constants.dart';

final Uri _plansUrl = Uri.parse(
    'https://play.google.com/store/apps/details?id=com.o2tech.plans&pcampaignid=web_share');
final Uri _moMUrl = Uri.parse('https://matterofmovement.com.au');
final Uri _digbyUrl = Uri.parse(
    'https://play.google.com/store/apps/details?id=com.samharvey.digby&pcampaignid=web_share');
final Uri _digbyWebUrl = Uri.parse('https://digbygame.com.au');
final Uri _brighterTomorrowUrl = Uri.parse('https://brightertomorrow.com.au');

Future<void> _launchPlansUrl() async {
  if (!await launchUrl(_plansUrl)) {
    throw 'Could not launch $_plansUrl';
  }
}

Future<void> _launchMoMUrl() async {
  if (!await launchUrl(_moMUrl)) {
    throw 'Could not launch $_moMUrl';
  }
}

Future<void> _launchDigbyUrl() async {
  if (!await launchUrl(_digbyUrl)) {
    throw 'Could not launch $_digbyUrl';
  }
}

Future<void> _launchDigbyWebUrl() async {
  if (!await launchUrl(_digbyWebUrl)) {
    throw 'Could not launch $_digbyWebUrl';
  }
}

Future<void> _launchBrighterTomorrowUrl() async {
  if (!await launchUrl(_brighterTomorrowUrl)) {
    throw 'Could not launch $_brighterTomorrowUrl';
  }
}

class PortfolioContent extends StatelessWidget {
  const PortfolioContent({super.key});

  @override
  Widget build(BuildContext context) {
    double mediaWidth = MediaQuery.of(context).size.width;

    return DisplayBox(
      child: Column(
        children: [
          gapH32,
          const Text(
            'Portfolio',
            textAlign: TextAlign.center,
            style: headingStyle,
          ),
          const Padding(
            padding: kPadding,
            child: Text(
              'Click the tile to test the app through your browser or be '
              'directed to the Play Store.',
              textAlign: TextAlign.center,
              style: bodyStyle,
            ),
          ),
          mediaWidth < 750
              ? Column(
                  children: [
                    const Text(
                      'Plans',
                      textAlign: TextAlign.center,
                      style: headingStyle,
                    ),
                    gapH32,
                    VerticalAppCard(
                      onPressed: _launchPlansUrl,
                      screenshot: 'images/plans_tile.png',
                      height: mediaWidth < 750
                          ? mediaWidth * 0.9
                          : mediaWidth * 0.8,
                    ),
                    gapH32,
                    const Text(
                      'Brighter Tomorrow',
                      textAlign: TextAlign.center,
                      style: headingStyle,
                    ),
                    gapH32,
                    VerticalAppCard(
                      onPressed: _launchBrighterTomorrowUrl,
                      screenshot: 'images/brighter_tomorrow_tile.png',
                      height: mediaWidth < 750
                          ? mediaWidth * 0.9
                          : mediaWidth * 0.8,
                    ),
                    gapH32,
                    const Text(
                      'Matter of Movement',
                      textAlign: TextAlign.center,
                      style: headingStyle,
                    ),
                    gapH32,
                    VerticalAppCard(
                      onPressed: _launchMoMUrl,
                      screenshot: 'images/MoM_tile_dark.png',
                      height: mediaWidth < 750
                          ? mediaWidth * 0.9
                          : mediaWidth * 0.8,
                    ),
                    gapH32,
                    const Text(
                      'Digby',
                      textAlign: TextAlign.center,
                      style: headingStyle,
                    ),
                    gapH32,
                    HorizontalAppCard(
                      onPressed: _launchDigbyUrl,
                      screenshot: 'images/digby_tile.png',
                      width: mediaWidth < 750
                          ? mediaWidth * 0.9
                          : mediaWidth * 0.8,
                    ),
                    gapH32,
                    const TextButton(
                      onPressed: _launchDigbyWebUrl,
                      child: Text(
                        'Play Digby in your browser',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: colour,
                          decoration: TextDecoration.underline,
                        ),
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
                        const Text(
                          'Plans',
                          textAlign: TextAlign.center,
                          style: headingStyle,
                        ),
                        gapH32,
                        VerticalAppCard(
                          onPressed: _launchPlansUrl,
                          screenshot: 'images/plans_tile.png',
                          height: mediaWidth < 750
                              ? (mediaWidth * 0.45) - 48
                              : (mediaWidth * 0.4) - 48,
                        ),
                        gapH32,
                        const Text(
                          'Matter of Movement',
                          textAlign: TextAlign.center,
                          style: headingStyle,
                        ),
                        gapH32,
                        VerticalAppCard(
                          onPressed: _launchMoMUrl,
                          screenshot: 'images/MoM_tile_dark.png',
                          height: mediaWidth < 750
                              ? (mediaWidth * 0.45) - 48
                              : (mediaWidth * 0.4) - 48,
                        ),
                        gapH32,
                      ],
                    ),
                    Column(
                      children: [
                        gapH32,
                        const Text(
                          'Brighter Tomorrow',
                          textAlign: TextAlign.center,
                          style: headingStyle,
                        ),
                        gapH32,
                        VerticalAppCard(
                          onPressed: _launchBrighterTomorrowUrl,
                          screenshot: 'images/brighter_tomorrow_tile.png',
                          height: mediaWidth < 750
                              ? (mediaWidth * 0.45) - 48
                              : (mediaWidth * 0.4) - 48,
                        ),
                        gapH32,
                        const Text(
                          'Digby',
                          textAlign: TextAlign.center,
                          style: headingStyle,
                        ),
                        gapH32,
                        HorizontalAppCard(
                          onPressed: _launchDigbyUrl,
                          screenshot: 'images/digby_tile.png',
                          width: mediaWidth < 750
                              ? (mediaWidth * 0.45) - 48
                              : (mediaWidth * 0.4) - 48,
                        ),
                        gapH32,
                        const TextButton(
                          onPressed: _launchDigbyWebUrl,
                          child: Text(
                            'Play Digby in your browser',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: colour,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                        gapH32,
                      ],
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}
