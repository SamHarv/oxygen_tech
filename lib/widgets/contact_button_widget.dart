import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

import '/constants.dart';

class ContactButtonWidget extends StatelessWidget {
  const ContactButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: InkWell(
        borderRadius: BorderRadius.circular(32),
        onTap: () => Beamer.of(context).beamToNamed('/contact'),
        child: Container(
          height: 45,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.blue[700],
            borderRadius: BorderRadius.circular(32),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[600]!,
                spreadRadius: 1,
                blurRadius: 15,
                offset: const Offset(4, 4),
              ),
              const BoxShadow(
                color: Colors.white,
                spreadRadius: 1,
                blurRadius: 15,
                offset: Offset(-4, -4),
              ),
            ],
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.blue[600]!,
                Colors.blue[700]!,
                Colors.blue[800]!,
                Colors.blue[900]!,
              ],
              stops: const [0.1, 0.3, 0.8, 1],
            ),
          ),
          child: const Center(
            child: Padding(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Text(
                'Contact',
                style: TextStyle(color: thirdColour, fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
