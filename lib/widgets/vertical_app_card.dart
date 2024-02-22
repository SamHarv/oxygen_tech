import 'package:flutter/material.dart';

import '../constants.dart';

class VerticalAppCard extends StatelessWidget {
  final String screenshot;
  final String title;
  final double height;
  final Function onPressed;

  const VerticalAppCard({
    super.key,
    required this.screenshot,
    required this.title,
    required this.height,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kPadding,
      child: InkWell(
        onTap: () => onPressed(),
        child: Material(
          borderRadius: BorderRadius.circular(32),
          elevation: 6,
          child: SizedBox(
            height: height,
            child: Flex(
              direction: Axis.vertical,
              children: [
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(32),
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(32),
                      ),
                      child: Image.asset(
                        screenshot,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
