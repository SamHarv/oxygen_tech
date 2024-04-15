import 'package:flutter/material.dart';
import 'package:beamer/beamer.dart';

import '/constants.dart';

class AppBarMenuWidget extends StatelessWidget {
  const AppBarMenuWidget({
    Key? key,
    required this.title,
    required this.route,
  }) : super(key: key);

  final String title;
  final String route;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: InkWell(
        borderRadius: BorderRadius.circular(32),
        child: Text(
          title,
          style: const TextStyle(color: colour),
        ),
        onTap: () => Beamer.of(context).beamToNamed(route),
      ),
    );
  }
}
