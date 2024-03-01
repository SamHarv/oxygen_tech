import 'package:flutter/material.dart';

class VerticalAppWidget extends StatelessWidget {
  final String screenshotPath;
  final double height;
  final Function onTap;

  const VerticalAppWidget({
    super.key,
    required this.screenshotPath,
    required this.height,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Image.asset(
        screenshotPath,
        height: height,
      ),
    );
  }
}
