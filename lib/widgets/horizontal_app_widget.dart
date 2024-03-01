import 'package:flutter/material.dart';

class HorizontalAppWidget extends StatelessWidget {
  final String screenshotPath;
  final double width;
  final Function onTap;

  const HorizontalAppWidget({
    super.key,
    required this.screenshotPath,
    required this.width,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Image.asset(
        screenshotPath,
        width: width,
      ),
    );
  }
}
