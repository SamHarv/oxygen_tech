import 'package:flutter/material.dart';

import '/widgets/app_drawer.dart';
import '/widgets/custom_appbar.dart';

import '/constants.dart';

class Terms extends StatelessWidget {
  const Terms({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      drawer: const AppDrawer(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  left: 32,
                  top: 32,
                  right: 32,
                  bottom: 16,
                ),
                child: Text(
                  'Terms & Conditions',
                  textAlign: TextAlign.center,
                  style: headingStyle,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 32,
                  top: 16,
                  right: 32,
                  bottom: 32,
                ),
                child: Text(
                  '© Copyright 2023 | Oxygen Tech\n\n'
                  'ABN 31968104103\n\n'
                  '11 March 2023\n\n'
                  'Except as permitted by the copyright law applicable to you, you may not reproduce or communicate any of the content on this website, including files downloadable from this website, without the permission of the copyright owner.\n\n'
                  'The Australian Copyright Act allows certain uses of content from the internet without the copyright owner\'s permission. This includes uses by educational institutions and by Commonwealth and State governments, provided fair compensation is paid.\n\n'
                  'The owners of copyright in the content on this website may receive compensation for the use of their content by educational institutions and governments, including from licensing schemes managed by Copyright Agency.\n\n'
                  'We may change these terms of use from time to time. Check before re-using any content from this website.',
                  style: bodyStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
