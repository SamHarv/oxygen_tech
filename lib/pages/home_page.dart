import 'package:flutter/material.dart';

import '/content/about_content.dart';
import '/content/portfolio_content.dart';
import '/content/contact_content.dart';

import '/widgets/display_box.dart';
import '/widgets/custom_appbar.dart';

import '/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final double mediaWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: appDrawer,
      appBar: const CustomAppBar(),
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
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(64),
                child: Image.asset(
                  logo,
                  width:
                      mediaWidth <= 750 ? mediaWidth * 0.8 : mediaWidth * 0.4,
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(
                      height: mediaWidth * 0.025,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(32),
                      child: Image.asset(
                        "images/display_1.png",
                        width: mediaWidth <= 750
                            ? mediaWidth * 0.8
                            : mediaWidth * 0.4,
                      ),
                    ),
                    DisplayBox(
                      children: [
                        Padding(
                          padding: kPadding,
                          child: Image.asset(
                            fullLogo,
                            height: 100,
                          ),
                        ),
                        const Padding(
                          padding: kPadding,
                          child: Text(
                            //Replace this
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
                    Padding(
                      padding: const EdgeInsets.all(32),
                      child: Image.asset(
                        "images/display_2.png",
                        width: mediaWidth <= 750
                            ? mediaWidth * 0.8
                            : mediaWidth * 0.4,
                      ),
                    ),
                    const PortfolioContent(),
                    Padding(
                      padding: const EdgeInsets.all(32),
                      child: Image.asset(
                        "images/display_3.png",
                        width: mediaWidth <= 750
                            ? mediaWidth * 0.8
                            : mediaWidth * 0.4,
                      ),
                    ),
                    const AboutContent(),
                    Padding(
                      padding: const EdgeInsets.all(32),
                      child: Image.asset(
                        "images/display_5.png",
                        width: mediaWidth <= 750
                            ? mediaWidth * 0.8
                            : mediaWidth * 0.4,
                      ),
                    ),
                    DisplayBox(
                      children: [
                        gapH12,
                        Padding(
                          padding: kPadding,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 80,
                                child: Image.asset('images/first.png'),
                              ),
                              const SizedBox(width: 24),
                              SizedBox(
                                width: 80,
                                child: Image.asset('images/torres.png'),
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: kPadding,
                          child: Text(
                            'Oxygen Tech acknowledges the Traditional Owners of the land, sea and waters of the areas we live and work on across Australia. We acknowledge their continuing connection to their culture and pay our respects to their Elders past and present.',
                            style: bodyStyle,
                          ),
                        ),
                        gapH12,
                      ],
                    ),
                    DisplayBox(
                      children: [
                        gapH12,
                        Padding(
                          padding: kPadding,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 80,
                                child: Image.asset('images/pride.png'),
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: kPadding,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Oxygen Tech is committed to embracing diversity and welcomes all people.',
                              style: bodyStyle,
                            ),
                          ),
                        ),
                        gapH12,
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(32),
                      child: Image.asset(
                        "images/display_4.png",
                        width: mediaWidth <= 750
                            ? mediaWidth * 0.8
                            : mediaWidth * 0.4,
                      ),
                    ),
                    const ContactContent(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
