import 'package:flutter/material.dart';

import '/content/services_content.dart';
import '/content/about_content.dart';
import '/content/portfolio_content.dart';
import '/content/contact_content.dart';
import '/widgets/display_box_widget.dart';
import '/widgets/custom_appbar_widget.dart';
import '/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
              child: Column(
                children: <Widget>[
                  gapH64,
                  Image.asset(
                    "images/display_1.png",
                    width:
                        mediaWidth <= 750 ? mediaWidth * 0.8 : mediaWidth * 0.4,
                  ),
                  gapH64,
                  DisplayBoxWidget(
                    child: Column(
                      children: [
                        gapH64,
                        Image.asset(
                          fullLogo,
                          height: 100,
                        ),
                        gapH32,
                        const Padding(
                          padding: kPadding,
                          child: Text(
                            'Oxygen Tech, sometimes known as O2Tech offers a service to build simple, performant, multi-platform applications for both mobile (iOS & Android), and web (websites & web apps).\n\n'
                            'We leverage the Flutter framework\'s multi-platform technology to streamline the process of development which leads to greater efficiency for O2Tech, and cheaper prices for our clients.\n\n'
                            'We are based on Dja Dja Wurrung Country (Central Victoria), but offer services remotely Australia-wide.\n\n'
                            'With O2Tech, you will be dealing with the same developer throughout your journey, which will lead to a personalised approach.\n\n'
                            'If you would like to get in touch and learn more, please scroll down to the Contact section.',
                            style: bodyStyle,
                          ),
                        ),
                      ],
                    ),
                  ),
                  gapH64,
                  Image.asset(
                    "images/display_2.png",
                    width:
                        mediaWidth <= 750 ? mediaWidth * 0.8 : mediaWidth * 0.4,
                  ),
                  gapH64,
                  const ServicesContent(),
                  gapH64,
                  Image.asset(
                    "images/display_5.png",
                    width:
                        mediaWidth <= 750 ? mediaWidth * 0.8 : mediaWidth * 0.4,
                  ),
                  gapH64,
                  const PortfolioContent(),
                  gapH64,
                  Image.asset(
                    "images/display_3.png",
                    width:
                        mediaWidth <= 750 ? mediaWidth * 0.8 : mediaWidth * 0.4,
                  ),
                  gapH64,
                  const AboutContent(),
                  gapH64,
                  Image.asset(
                    "images/display_4.png",
                    width:
                        mediaWidth <= 750 ? mediaWidth * 0.8 : mediaWidth * 0.4,
                  ),
                  gapH64,
                  DisplayBoxWidget(
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
                  gapH32,
                  DisplayBoxWidget(
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
                          const Text(
                            'Oxygen Tech is committed to embracing diversity '
                            'and welcomes all people.',
                            style: bodyStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                  gapH32,
                  const ContactContent(),
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
