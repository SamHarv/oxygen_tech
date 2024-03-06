import 'package:flutter/material.dart';

import '/constants.dart';

class DrawerTileWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const DrawerTileWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: thirdColour,
      leading: Icon(
        icon,
        size: 26,
        color: secondaryColour,
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 24,
          color: colour,
        ),
      ),
      onTap: onTap,
    );
  }
}
