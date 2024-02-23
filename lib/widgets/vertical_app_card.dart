import 'package:flutter/material.dart';

class VerticalAppCard extends StatelessWidget {
  final String screenshot;
  final double height;
  final Function onPressed;

  const VerticalAppCard({
    super.key,
    required this.screenshot,
    required this.height,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPressed(),
      child: Image.asset(
        screenshot,
        height: height,
      ),
    );
  }
}
