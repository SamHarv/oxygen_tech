import 'package:flutter/material.dart';

class DisplayBox extends StatelessWidget {
  final Widget? child;
  const DisplayBox({
    super.key,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    final double mediaWidth = MediaQuery.of(context).size.width;
    return Container(
      width: mediaWidth < 750 ? mediaWidth : mediaWidth * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: Colors.white,
      ),
      child: child!,
    );
  }
}
