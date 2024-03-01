import 'package:flutter/material.dart';
import 'package:beamer/beamer.dart';

import 'drawer_tile_widget.dart';
import '/constants.dart';

class AppDrawerWidget extends StatelessWidget {
  const AppDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: thirdColour,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: kPadding,
              color: thirdColour,
              child: Image.asset(fullLogo),
            ),
            const Divider(),
            DrawerTileWidget(
              title: 'Home',
              icon: Icons.home,
              onTap: () => Beamer.of(context).beamToNamed('/'),
            ),
            const Divider(),
            DrawerTileWidget(
              title: 'Portfolio',
              icon: Icons.apps,
              onTap: () => Beamer.of(context).beamToNamed('/portfolio'),
            ),
            const Divider(),
            DrawerTileWidget(
              title: 'Services',
              icon: Icons.devices,
              onTap: () => Beamer.of(context).beamToNamed('/services'),
            ),
            const Divider(),
            DrawerTileWidget(
              title: 'About',
              icon: Icons.info,
              onTap: () => Beamer.of(context).beamToNamed('/about'),
            ),
            const Divider(),
            DrawerTileWidget(
              title: 'Contact',
              icon: Icons.email,
              onTap: () => Beamer.of(context).beamToNamed('/contact'),
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
                      color: colour,
                      decoration: TextDecoration.underline,
                      fontSize: 16,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () => Beamer.of(context).beamToNamed('/terms'),
                  child: const Text(
                    'Terms of Use',
                    style: TextStyle(
                      color: colour,
                      decoration: TextDecoration.underline,
                      fontSize: 16,
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
