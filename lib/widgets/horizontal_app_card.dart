import 'package:flutter/material.dart';

import '../constants.dart';

class HorizontalAppCard extends StatelessWidget {
  final String screenshot;
  final String title;
  final double width;
  final Function onPressed;

  const HorizontalAppCard({
    super.key,
    required this.screenshot,
    required this.title,
    required this.width,
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
            width: width,
            child: Flex(
              direction: Axis.horizontal,
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
