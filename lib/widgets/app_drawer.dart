import 'package:flutter/material.dart';

import '../constants.dart';

import 'package:go_router/go_router.dart';

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
            () => context.go('/'),
          ),
          const Divider(),
          buildListTile(
            'Portfolio',
            Icons.apps,
            () => context.go('/portfolio'),
          ),
          const Divider(),
          buildListTile(
            'About',
            Icons.info,
            () => context.go('/about'),
          ),
          const Divider(),
          buildListTile(
            'Contact',
            Icons.email,
            () => context.go('/contact'),
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () => context.go('/privacy'),
                child: const Text(
                  'Privacy Policy',
                  style: TextStyle(
                    color: kColor,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              TextButton(
                onPressed: () => context.go('/terms'),
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
    );
  }
}
