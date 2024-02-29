import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

import '/constants.dart';

class ContactButton extends StatelessWidget {
  const ContactButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => Beamer.of(context).beamToNamed('/contact'),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(colour),
      ),
      child: const Text(
        'Contact',
        style: TextStyle(
          fontSize: 20.0,
          color: thirdColour,
        ),
      ),
    );
  }
}
