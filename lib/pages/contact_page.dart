import 'package:flutter/material.dart';

import '/content/contact_content.dart';
import '/widgets/custom_appbar_widget.dart';
import '/constants.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

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
                ContactContent(delay: 0),
                gapH32,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
