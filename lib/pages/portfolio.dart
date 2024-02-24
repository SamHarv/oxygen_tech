import 'package:flutter/material.dart';

import '/content/portfolio_content.dart';
import '/constants.dart';
import '/widgets/custom_appbar.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

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
              children: [
                gapH32,
                PortfolioContent(),
                gapH32,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
