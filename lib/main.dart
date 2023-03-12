import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_web_plugins/url_strategy.dart';

import '/routes.dart';

void main() {
  usePathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}

//O2Tech
// Page sized need to be relative to mediaheight for best scrolling experience
// Complete about page and contact details - add socials - separate about from Contact page
// Plan out UI to best display the apps using vertical and horizontal rectangles
//  - When screen is wider, can go 4 verticals across then 2 horizontals below
// Single page business app (vertical)
// CHF app (vertical)
// Booking app (horizontal)
// MoM app (vertical)
// Form app (vertical)
// Digby (horizontal)
// Add some cool animations

//MoM
// Fix favourites icon functionality after refresh

//Digby
// Replace boosters (chrome can, blue chocolate bar, burger)
// Add texture to barriers and round the corners
// Get Domain name
// Add URL strategy
// Publish to PlayStore & AppStore

//CHF app
// Finish planning and build

//eCommerce app
// My Sunshine Swaddles?

//Booking app
// For Alec or Britt?

//Form app
// Plan & build

//Once all are built, reach out to family & friends to come up with project