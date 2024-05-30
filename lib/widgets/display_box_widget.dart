import 'package:flutter/material.dart';
import '/constants.dart';

class DisplayBoxWidget extends StatelessWidget {
  final Widget child;

  const DisplayBoxWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final mediaWidth = MediaQuery.of(context).size.width;
    return Container(
      width: mediaWidth < 750 ? mediaWidth : mediaWidth * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: thirdColour,
      ),
      child: child,
    );
  }
}
