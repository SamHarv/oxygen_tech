import 'package:flutter/material.dart';

import '../content/services_content.dart';

import '/constants.dart';
import '/widgets/custom_appbar_widget.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: appDrawer,
      appBar: const CustomAppBarWidget(),
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
              children: [
                gapH32,
                ServicesContent(),
                gapH32,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
