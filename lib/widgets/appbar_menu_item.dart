import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '/constants.dart';

class AppBarMenuItem extends StatelessWidget {
  const AppBarMenuItem({
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
        child: Text(
          title,
          style: const TextStyle(color: kColor),
        ),
        onTap: () => context.go(route),
      ),
    );
  }
}
