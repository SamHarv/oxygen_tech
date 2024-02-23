import 'package:flutter/material.dart';

import '../constants.dart';

class VerticalAppCard extends StatelessWidget {
  final String screenshot;
  final String title;
  final double height;
  final Function onPressed;

  const VerticalAppCard({
    super.key,
    required this.screenshot,
    required this.title,
    required this.height,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kPadding,
      child: InkWell(
        onTap: () => onPressed(),
        child: Image.asset(
          screenshot,
          height: height,
        ),
      ),
    );
  }
}
