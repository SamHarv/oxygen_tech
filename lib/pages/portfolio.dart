import 'package:flutter/material.dart';

import '/constants.dart';
import '/widgets/custom_appbar.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  final String image = 'images/2.png';

  @override
  Widget build(BuildContext context) {
    final double mediaWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: appDrawer,
      appBar: const CustomAppBar(),
      body: Center(
        child: SizedBox(
          width: mediaWidth * 0.9,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              image,
            ),
          ),
        ),
        //Add portfolio and contact to home page
      ),
    );
  }
}
