import 'package:flutter/material.dart';

class VerticalAppCard extends StatelessWidget {
  final String screenshot;
  final double height;
  final Function onTap;

  const VerticalAppCard({
    super.key,
    required this.screenshot,
    required this.height,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Image.asset(
        screenshot,
        height: height,
      ),
    );
  }
}
