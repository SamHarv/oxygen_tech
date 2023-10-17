import 'package:flutter/material.dart';
import 'package:oxygen_tech/content/about_content.dart';

import '/constants.dart';
import '/widgets/custom_appbar.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: appDrawer,
      appBar: const CustomAppBar(),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black45.withOpacity(0.7),
              Colors.black12,
            ],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
        ),
        child: const Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                AboutContent(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
