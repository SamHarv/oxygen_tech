import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '/pages/privacy.dart';
import 'pages/home_page.dart';
import 'pages/portfolio.dart';
import 'pages/about.dart';
import 'pages/contact.dart';
import 'pages/terms.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => CustomTransitionPage(
        transitionDuration: const Duration(seconds: 1),
        key: state.pageKey,
        child: const HomePage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: CurveTween(curve: Curves.easeIn).animate(animation),
            child: const HomePage(),
          );
        },
      ),
    ),
    GoRoute(
      path: '/portfolio',
      pageBuilder: (context, state) => CustomTransitionPage(
        transitionDuration: const Duration(seconds: 1),
        key: state.pageKey,
        child: const Portfolio(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: CurveTween(curve: Curves.easeIn).animate(animation),
            child: const Portfolio(),
          );
        },
      ),
    ),
    GoRoute(
      path: '/about',
      pageBuilder: (context, state) => CustomTransitionPage(
        transitionDuration: const Duration(seconds: 1),
        key: state.pageKey,
        child: const AboutPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: CurveTween(curve: Curves.easeIn).animate(animation),
            child: const AboutPage(),
          );
        },
      ),
    ),
    GoRoute(
      path: '/contact',
      pageBuilder: (context, state) => CustomTransitionPage(
        transitionDuration: const Duration(seconds: 1),
        key: state.pageKey,
        child: const ContactPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: CurveTween(curve: Curves.easeIn).animate(animation),
            child: const ContactPage(),
          );
        },
      ),
    ),
    GoRoute(
      path: '/privacy',
      pageBuilder: (context, state) => CustomTransitionPage(
        transitionDuration: const Duration(seconds: 1),
        key: state.pageKey,
        child: const Privacy(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: CurveTween(curve: Curves.easeIn).animate(animation),
            child: const Privacy(),
          );
        },
      ),
    ),
    GoRoute(
      path: '/terms',
      pageBuilder: (context, state) => CustomTransitionPage(
        transitionDuration: const Duration(seconds: 1),
        key: state.pageKey,
        child: const Terms(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: CurveTween(curve: Curves.easeIn).animate(animation),
            child: const Terms(),
          );
        },
      ),
    ),
  ],
);
