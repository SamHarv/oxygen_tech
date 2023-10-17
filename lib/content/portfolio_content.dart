import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '/widgets/horizontal_app_card.dart';
import '/widgets/vertical_app_card.dart';
import '/widgets/display_box.dart';

import '/constants.dart';

final Uri _moMUrl = Uri.parse('https://matterofmovement.com.au');
final Uri _digbyUrl = Uri.parse('https://digbygame.com.au');
final Uri _brighter_tomorrowUrl = Uri.parse('https://brightertomorrow.com.au');

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

Future<void> _launchBrighterTomorrowUrl() async {
  if (!await launchUrl(_brighter_tomorrowUrl)) {
    throw 'Could not launch $_brighter_tomorrowUrl';
  }
}

class PortfolioContent extends StatelessWidget {
  const PortfolioContent({super.key});

  @override
  Widget build(BuildContext context) {
    double mediaWidth = MediaQuery.of(context).size.width;

    return DisplayBox(
      children: [
        gapH12,
        const Padding(
          padding: kPadding,
          child: Text(
            'Portfolio',
            textAlign: TextAlign.center,
            style: headingStyle,
          ),
        ),
        gapH12,
        const Padding(
          padding: kPadding,
          child: Text(
            'Click the tile to test the app through your browser.',
            textAlign: TextAlign.center,
            style: bodyStyle,
          ),
        ),
        gapH12,
        mediaWidth < 750
            ? Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Padding(
                    padding: kPadding,
                    child: Text(
                      'Brighter Tomorrow',
                      textAlign: TextAlign.center,
                      style: headingStyle,
                    ),
                  ),
                  gapH12,
                  VerticalAppCard(
                    onPressed: _launchBrighterTomorrowUrl,
                    screenshot: 'images/brighter_tomorrow.png',
                    title: 'Brighter Tomorrow',
                    height:
                        mediaWidth < 750 ? mediaWidth * 0.9 : mediaWidth * 0.8,
                  ),
                  const Padding(
                    padding: kPadding,
                    child: Text(
                      'Matter of Movement',
                      textAlign: TextAlign.center,
                      style: headingStyle,
                    ),
                  ),
                  gapH12,
                  VerticalAppCard(
                    onPressed: _launchMoMUrl,
                    screenshot: 'images/MoM.png',
                    title: 'Matter of Movement',
                    height:
                        mediaWidth < 750 ? mediaWidth * 0.9 : mediaWidth * 0.8,
                  ),
                  gapH12,
                  const Padding(
                    padding: kPadding,
                    child: Text(
                      'Digby',
                      textAlign: TextAlign.center,
                      style: headingStyle,
                    ),
                  ),
                  gapH12,
                  HorizontalAppCard(
                      onPressed: _launchDigbyUrl,
                      screenshot: 'images/digby_screenshot.png',
                      title: 'Digby',
                      width: mediaWidth < 750
                          ? mediaWidth * 0.9
                          : mediaWidth * 0.8),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Padding(
                        padding: kPadding,
                        child: Text(
                          'Brighter Tomorrow',
                          textAlign: TextAlign.center,
                          style: headingStyle,
                        ),
                      ),
                      gapH12,
                      VerticalAppCard(
                        onPressed: _launchBrighterTomorrowUrl,
                        screenshot: 'images/brighter_tomorrow.png',
                        title: 'Brighter Tomorrow',
                        height: mediaWidth < 750
                            ? (mediaWidth * 0.45) - 48
                            : (mediaWidth * 0.4) - 48,
                      ),
                      const Padding(
                        padding: kPadding,
                        child: Text(
                          'Matter of Movement',
                          textAlign: TextAlign.center,
                          style: headingStyle,
                        ),
                      ),
                      gapH12,
                      VerticalAppCard(
                        onPressed: _launchMoMUrl,
                        screenshot: 'images/MoM.png',
                        title: 'Matter of Movement',
                        height: mediaWidth < 750
                            ? (mediaWidth * 0.45) - 48
                            : (mediaWidth * 0.4) - 48,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Padding(
                        padding: kPadding,
                        child: Text(
                          'Digby',
                          textAlign: TextAlign.center,
                          style: headingStyle,
                        ),
                      ),
                      gapH12,
                      HorizontalAppCard(
                        onPressed: _launchDigbyUrl,
                        screenshot: 'images/digby_screenshot.png',
                        title: 'Digby',
                        width: mediaWidth < 750
                            ? (mediaWidth * 0.45) - 48
                            : (mediaWidth * 0.4) - 48,
                      ),
                    ],
                  ),
                ],
              ),
        gapH12,
      ],
    );
  }
}
