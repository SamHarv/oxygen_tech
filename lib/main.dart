import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:beamer/beamer.dart';

import '/routes.dart';

void main() {
  usePathUrlStrategy();
  runApp(const O2Tech());
}

class O2Tech extends StatelessWidget {
  const O2Tech({super.key});

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
