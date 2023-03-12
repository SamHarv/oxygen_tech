//Copy of contact info from bottom of home page

import 'package:flutter/material.dart';
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

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double mediaWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: appDrawer,
      appBar: const CustomAppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                padding: kPadding,
                child: const Text(
                  'Contact',
                  textAlign: TextAlign.center,
                  style: headingStyle,
                ),
              ),
              Container(
                padding: kPadding,
                child: Column(
                  children: const [
                    Text(
                      'Sam Harvey\n\n'
                      'Director\n\n'
                      'Oxygen Tech\n',
                      textAlign: TextAlign.center,
                      style: bodyStyle,
                    ),
                    TextButton(
                      onPressed: _sendEmail,
                      child: Text(
                        'oxygentech@protonmail.com\n',
                        style: bodyStyle,
                      ),
                    ),
                    TextButton(
                      onPressed: _launchUrl,
                      child: Text(
                        'oxygentech.com.au (coming soon)',
                        style: bodyStyle,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                child: Padding(
                  padding: kPadding,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                      'images/sam.jpeg',
                      // cacheHeight: 200,
                      // cacheWidth: 200,
                    ),
                    radius: 100,
                  ),
                ),
              ),
              SizedBox(
                width: mediaWidth <= 750 ? mediaWidth * 0.8 : mediaWidth * 0.4,
                child: Padding(
                  padding: kPadding,
                  child: Image.asset(
                    fullLogo,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
