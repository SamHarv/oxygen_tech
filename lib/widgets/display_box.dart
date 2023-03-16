import 'package:flutter/material.dart';

class DisplayBox extends StatelessWidget {
  final List<Widget>? children;
  const DisplayBox({
    super.key,
    this.children,
  });

  @override
  Widget build(BuildContext context) {
    final double mediaWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(
        bottom: mediaWidth * 0.025,
        top: mediaWidth * 0.025,
      ),
      width: mediaWidth < 750 ? mediaWidth : mediaWidth * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: Colors.white,
      ),
      padding: const EdgeInsets.all(24),
      child: Column(
        children: children!,
      ),
    );
  }
}
