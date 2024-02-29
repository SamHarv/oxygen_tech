import 'package:flutter/material.dart';
import 'package:beamer/beamer.dart';

import '/constants.dart';
import 'appbar_menu_widget.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    final double mediaWidth = MediaQuery.of(context).size.width;
    return AppBar(
      automaticallyImplyLeading: mediaWidth < 750 ? true : false,
      iconTheme: const IconThemeData(
        color: secondaryColour,
      ),
      backgroundColor: thirdColour,
      title: Center(
        child: mediaWidth < 750
            ? InkWell(
                child: Image.asset(
                  logo,
                  fit: BoxFit.contain,
                  height: 50.0,
                ),
                onTap: () => Beamer.of(context).beamToNamed('/'),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    child: Image.asset(
                      fullLogo,
                      height: 40.0,
                    ),
                    onTap: () => Beamer.of(context).beamToNamed('/'),
                  ),
                  Row(
                    children: [
                      const AppBarMenuItem(
                        title: 'Services',
                        route: '/services',
                      ),
                      const AppBarMenuItem(
                        title: 'Portfolio',
                        route: '/portfolio',
                      ),
                      const AppBarMenuItem(
                        title: 'About',
                        route: '/about',
                      ),
                      const AppBarMenuItem(
                        title: 'Contact',
                        route: '/contact',
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: PopupMenuButton<String>(
                          color: thirdColour,
                          child: const Text(
                            'Legal',
                            style: TextStyle(
                              color: colour,
                            ),
                          ),
                          itemBuilder: (BuildContext context) {
                            return [
                              const PopupMenuItem<String>(
                                value: 'privacy',
                                child: Text(
                                  'Privacy Policy',
                                  style: TextStyle(color: colour),
                                ),
                              ),
                              const PopupMenuItem<String>(
                                value: 'terms',
                                child: Text(
                                  'Terms & Conditions',
                                  style: TextStyle(color: colour),
                                ),
                              ),
                            ];
                          },
                          onSelected: (value) {
                            if (value == 'privacy') {
                              Beamer.of(context).beamToNamed('/privacy');
                            } else if (value == 'terms') {
                              Beamer.of(context).beamToNamed('/terms');
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
      ),
      actions: mediaWidth > 750
          ? null
          : [
              Padding(
                padding: const EdgeInsets.all(8),
                child: IconButton(
                  onPressed: () => Beamer.of(context).beamToNamed('/contact'),
                  icon: const Icon(Icons.email_outlined),
                  color: secondaryColour,
                ),
              ),
            ],
    );
  }
}
