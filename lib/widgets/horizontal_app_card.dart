import 'package:flutter/material.dart';

class HorizontalAppCard extends StatelessWidget {
  final String screenshot;
  final double width;
  final Function onPressed;

  const HorizontalAppCard({
    super.key,
    required this.screenshot,
    required this.width,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPressed(),
      child: Image.asset(
        screenshot,
        width: width,
      ),
    );
  }
}
