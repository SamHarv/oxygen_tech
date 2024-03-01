import 'package:flutter/material.dart';
import 'package:beamer/beamer.dart';

import '/constants.dart';
import 'appbar_menu_widget.dart';

class CustomAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppBarWidget({Key? key}) : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    final mediaWidth = MediaQuery.of(context).size.width;
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
                      const AppBarMenuWidget(
                        title: 'Services',
                        route: '/services',
                      ),
                      const AppBarMenuWidget(
                        title: 'Portfolio',
                        route: '/portfolio',
                      ),
                      const AppBarMenuWidget(
                        title: 'About',
                        route: '/about',
                      ),
                      const AppBarMenuWidget(
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
                          itemBuilder: (context) {
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
                          onSelected: (value) =>
                              Beamer.of(context).beamToNamed('/$value'),
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
