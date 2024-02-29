import 'package:flutter/material.dart';

class HorizontalAppCard extends StatelessWidget {
  final String screenshot;
  final double width;
  final Function onTap;

  const HorizontalAppCard({
    super.key,
    required this.screenshot,
    required this.width,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Image.asset(
        screenshot,
        width: width,
      ),
    );
  }
}
