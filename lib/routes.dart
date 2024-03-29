import 'package:flutter/material.dart';
import 'package:beamer/beamer.dart';

import '/pages/services_page.dart';
import 'pages/privacy_page.dart';
import 'pages/home_page.dart';
import 'pages/portfolio_page.dart';
import 'pages/about_page.dart';
import 'pages/contact_page.dart';
import 'pages/terms_page.dart';

final routerDelegate = BeamerDelegate(
  notFoundRedirectNamed: '/home',
  initialPath: '/home',
  locationBuilder: RoutesLocationBuilder(
    routes: {
      '/home': (context, state, data) {
        return const BeamPage(
          key: ValueKey(''),
          type: BeamPageType.fadeTransition,
          title: 'Oxygen Tech',
          child: HomePage(),
        );
      },
      '/services': (context, state, data) {
        return const BeamPage(
          key: ValueKey('services'),
          type: BeamPageType.fadeTransition,
          title: 'Services - Oxygen Tech',
          child: ServicesPage(),
        );
      },
      '/portfolio': (context, state, data) {
        return const BeamPage(
          key: ValueKey('portfolio'),
          type: BeamPageType.fadeTransition,
          title: 'Portfolio - Oxygen Tech',
          child: PortfolioPage(),
        );
      },
      '/about': (context, state, data) {
        return const BeamPage(
          key: ValueKey('about'),
          type: BeamPageType.fadeTransition,
          title: 'About - Oxygen Tech',
          child: AboutPage(),
        );
      },
      '/contact': (context, state, data) {
        return const BeamPage(
          key: ValueKey('contact'),
          type: BeamPageType.fadeTransition,
          title: 'Contact - Oxygen Tech',
          child: ContactPage(),
        );
      },
      '/privacy': (context, state, data) {
        return const BeamPage(
          key: ValueKey('privacy'),
          type: BeamPageType.fadeTransition,
          title: 'Privacy Policy - Oxygen Tech',
          child: PrivacyPage(),
        );
      },
      '/terms': (context, state, data) {
        return const BeamPage(
          key: ValueKey('terms'),
          type: BeamPageType.fadeTransition,
          title: 'Terms & Conditions - Oxygen Tech',
          child: TermsPage(),
        );
      },
    },
  ),
);
