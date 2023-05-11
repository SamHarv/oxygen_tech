import 'package:flutter/material.dart';

// ignore: depend_on_referenced_packages
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:beamer/beamer.dart';

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
      routerDelegate: routerDelegate,
      routeInformationParser: BeamerParser(),
      title: 'Oxygen Tech',
    );
  }
}

//O2Tech

//MoM
// Fix favourites icon functionality after refresh

//Digby

//CHF app
// Finish planning and build

//eCommerce app
// My Sunshine Swaddles?

//Booking app
// For Alec or Britt?

//Form app
// Plan & build

//Once all are built, reach out to family & friends to come up with project

  // <link rel="preload" href="https://oxygentech.com.au/icons/Icon-192.png" as="fetch" crossorigin>
  // <link rel="preload" href="https://oxygentech.com.au/assets/fonts/MaterialIcons-Regular.otf" as="fetch" crossorigin>
  // <link rel="preload" href="https://oxygentech.com.au/assets/packages/cupertino_icons/assets/CupertinoIcons.ttf" as="fetch" crossorigin>
  // <link rel="preload" href="https://oxygentech.com.au/assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf" as="fetch" crossorigin>
  // <link rel="preload" href="https://oxygentech.com.au/assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf" as="fetch" crossorigin>
  // <link rel="preload" href="https://oxygentech.com.au/assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf" as="fetch" crossorigin>
  // <link rel="preload" href="https://oxygentech.com.au/assets/images/screens.png" as="fetch" crossorigin>
  // <link rel="preload" href="https://oxygentech.com.au/assets/images/2.png" as="fetch" crossorigin>
  // <link rel="preload" href="https://oxygentech.com.au/assets/images/MoM.png" as="fetch" crossorigin>
  // <link rel="preload" href="https://oxygentech.com.au/assets/images/digby_screenshot.png" as="fetch" crossorigin>
  // <link rel="preload" href="https://oxygentech.com.au/assets/images/first.png" as="fetch" crossorigin>
  // <link rel="preload" href="https://oxygentech.com.au/assets/images/first.png" as="fetch" crossorigin>
  // <link rel="preload" href="https://oxygentech.com.au/assets/images/pride.png" as="fetch" crossorigin>
  // <link rel="preload" href="https://oxygentech.com.au/assets/images/1.png" as="fetch" crossorigin>
  // <link rel="preload" href="https://oxygentech.com.au/assets/images/sam.jpeg" as="fetch" crossorigin>