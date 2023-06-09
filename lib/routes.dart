import 'package:flutter/widgets.dart';
import 'package:beamer/beamer.dart';

import 'pages/privacy.dart';
import 'pages/home_page.dart';
import 'pages/portfolio.dart';
import 'pages/about.dart';
import 'pages/contact.dart';
import 'pages/terms.dart';

final routerDelegate = BeamerDelegate(
  notFoundRedirectNamed: '/',
  initialPath: '/',
  locationBuilder: RoutesLocationBuilder(
    routes: {
      '/': (context, state, data) {
        return const BeamPage(
          key: ValueKey(''),
          type: BeamPageType.fadeTransition,
          title: 'Oxygen Tech',
          child: HomePage(),
        );
      },
      '/portfolio': (context, state, data) {
        return const BeamPage(
          key: ValueKey('portfolio'),
          type: BeamPageType.fadeTransition,
          title: 'Portfolio - Oxygen Tech',
          child: Portfolio(),
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
          child: Privacy(),
        );
      },
      '/terms': (context, state, data) {
        return const BeamPage(
          key: ValueKey('terms'),
          type: BeamPageType.fadeTransition,
          title: 'Terms & Conditions - Oxygen Tech',
          child: Terms(),
        );
      },
    },
  ),
);
