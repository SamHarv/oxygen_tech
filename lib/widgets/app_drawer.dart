import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  Widget buildListTile(String title, IconData icon, dynamic tapHandler) {
    return ListTile(
      tileColor: thirdColor,
      leading: Icon(
        icon,
        size: 26,
        color: secondaryColor,
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 24,
          color: kColor,
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: thirdColor,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(30),
              color: thirdColor,
              child: Image.asset(fullLogo),
            ),
            const Divider(),
            buildListTile(
              'Home',
              Icons.home,
              () => Beamer.of(context).beamToNamed('/'),
            ),
            const Divider(),
            buildListTile(
              'Portfolio',
              Icons.apps,
              () => Beamer.of(context).beamToNamed('/portfolio'),
            ),
            const Divider(),
            buildListTile(
              'About',
              Icons.info,
              () => Beamer.of(context).beamToNamed('/about'),
            ),
            const Divider(),
            buildListTile(
              'Contact',
              Icons.email,
              () => Beamer.of(context).beamToNamed('/contact'),
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () => Beamer.of(context).beamToNamed('/privacy'),
                  child: const Text(
                    'Privacy Policy',
                    style: TextStyle(
                      color: kColor,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () => Beamer.of(context).beamToNamed('/terms'),
                  child: const Text(
                    'Terms of Use',
                    style: TextStyle(
                      color: kColor,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
