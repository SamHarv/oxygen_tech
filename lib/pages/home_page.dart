import 'package:flutter/material.dart';
import 'package:oxygen_tech/widgets/display_box.dart';
import 'package:url_launcher/url_launcher.dart';

import '/widgets/custom_appbar.dart';
import '/constants.dart';

final Uri _url = Uri.parse('https://google.com'); //this will be O2 Tech url

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}

//async after _sendMail()
void _sendEmail() {
  final Uri emailLaunchUri = Uri(
    scheme: 'mailto',
    path: 'oxygentech@protonmail.com',
  );
  launchUrl(emailLaunchUri);
  //await before launchUrl
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final String image = 'images/2.png';

  @override
  Widget build(BuildContext context) {
    final double mediaWidth = MediaQuery.of(context).size.width;
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
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                  width:
                      mediaWidth <= 750 ? mediaWidth * 0.8 : mediaWidth * 0.4,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 64, top: 64, right: 64, bottom: 48),
                    child: Image.asset(
                      fullLogo,
                    ),
                  ),
                ),
                // Insert some imagery
                // Look at stock photos for app/ web development
                const DisplayBox(
                  children: [
                    Padding(
                      padding: kPadding,
                      child: Text(
                        'What We Do',
                        textAlign: TextAlign.center,
                        style: headingStyle,
                      ),
                    ),
                    Padding(
                      padding: kPadding,
                      child: Text(
                        //Replace this
                        'A public jounral of what I perceive to be the more valuable of my ideas.\n\n'
                        'Why Matter of Movement?\n\n'
                        'I initially created this webpage to write about movement as it pertains to exercise and physical activity.\n\n'
                        'I now realise that my interests are far broader.\n\n'
                        'To enable me to write about whatever I want, here is my justification for continued use of the name:\n\n'
                        'A complete cessation of movement is death, therefore life consists of continuous movement.\n\n'
                        'Matters of movement are matters of life.',
                        style: bodyStyle,
                      ),
                    ),
                  ],
                ),
                const DisplayBox(
                  children: [
                    gapH12,
                    Padding(
                      padding: kPadding,
                      child: Text(
                        'Portfolio',
                        textAlign: TextAlign.center,
                        style: headingStyle,
                      ),
                    ),
                    Padding(
                      padding: kPadding,
                      child: Text(
                        'Description of demo apps',
                        style: bodyStyle,
                      ),
                    ),
                    gapH12,
                  ],
                ),
                const DisplayBox(
                  children: [
                    gapH12,
                    Padding(
                      padding: kPadding,
                      child: Text(
                        'About',
                        textAlign: TextAlign.center,
                        style: headingStyle,
                      ),
                    ),
                    Padding(
                      padding: kPadding,
                      child: Text(
                        'A public jounral of what I perceive to be the more valuable of my ideas.\n\n'
                        'Why Matter of Movement?\n\n'
                        'I initially created this webpage to write about movement as it pertains to exercise and physical activity.\n\n'
                        'I now realise that my interests are far broader.\n\n'
                        'To enable me to write about whatever I want, here is my justification for continued use of the name:\n\n'
                        'A complete cessation of movement is death, therefore life consists of continuous movement.\n\n'
                        'Matters of movement are matters of life.',
                        style: bodyStyle,
                      ),
                    ),
                    gapH12,
                    SizedBox(
                      child: Padding(
                        padding: kPadding,
                        child: CircleAvatar(
                          backgroundImage: AssetImage(
                            'images/sam.jpeg',
                          ),
                          radius: 100,
                        ),
                      ),
                    ),
                    gapH12,
                  ],
                ),
                const DisplayBox(
                  children: [
                    gapH12,
                    Padding(
                      padding: kPadding,
                      child: Text(
                        'Acknowledgement of Country',
                        textAlign: TextAlign.center,
                        style: headingStyle,
                      ),
                    ),
                    Padding(
                      padding: kPadding,
                      child: Text(
                        'Description of demo apps',
                        style: bodyStyle,
                      ),
                    ),
                    gapH12,
                  ],
                ),
                const DisplayBox(
                  children: [
                    gapH12,
                    Padding(
                      padding: kPadding,
                      child: Text(
                        'Diversity',
                        textAlign: TextAlign.center,
                        style: headingStyle,
                      ),
                    ),
                    Padding(
                      padding: kPadding,
                      child: Text(
                        'Description of demo apps',
                        style: bodyStyle,
                      ),
                    ),
                    gapH12,
                  ],
                ),
                const DisplayBox(
                  children: [
                    gapH12,
                    Padding(
                      padding: kPadding,
                      child: Text(
                        'Contact',
                        textAlign: TextAlign.center,
                        style: headingStyle,
                      ),
                    ),
                    Padding(
                      padding: kPadding,
                      child: Text(
                        'Sam Harvey\n\n'
                        'Director\n\n'
                        'Oxygen Tech\n',
                        textAlign: TextAlign.center,
                        style: bodyStyle,
                      ),
                    ),
                    gapH12,
                    Padding(
                      padding: kPadding,
                      child: TextButton(
                        onPressed: _sendEmail,
                        child: Text(
                          'oxygentech@protonmail.com\n',
                          style: bodyStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
