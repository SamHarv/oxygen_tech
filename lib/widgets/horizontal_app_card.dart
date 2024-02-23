import 'package:flutter/material.dart';

import '../constants.dart';

class HorizontalAppCard extends StatelessWidget {
  final String screenshot;
  final String title;
  final double width;
  final Function onPressed;

  const HorizontalAppCard({
    super.key,
    required this.screenshot,
    required this.title,
    required this.width,
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
          width: width,
        ),
      ),
    );
  }
}
