import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

import './appbar_menu_item.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    //required this.id,
  }) : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(60.0);

  final String image = 'images/1.png';

  @override
  Widget build(BuildContext context) {
    final double mediaWidth = MediaQuery.of(context).size.width;

    return AppBar(
      automaticallyImplyLeading: mediaWidth < 750 ? true : false,
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      backgroundColor: Colors.white,
      title: Center(
        child: mediaWidth < 750
            ? InkWell(
                child: Image.asset(
                  image,
                  fit: BoxFit.contain,
                  height: 50.0,
                ),
                onTap: () => Beamer.of(context).beamToNamed('/'),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      AppBarMenuItem(
                        title: 'Home',
                        route: '/',
                      ),
                      AppBarMenuItem(
                        title: 'Portfolio',
                        route: '/portfolio',
                      ),
                      AppBarMenuItem(
                        title: 'About',
                        route: '/about',
                      ),
                      AppBarMenuItem(
                        title: 'Contact',
                        route: '/contact',
                      ),
                    ],
                  ),
                  InkWell(
                    child: Image.asset(
                      image,
                      fit: BoxFit.contain,
                      height: 50.0,
                    ),
                    onTap: () => Beamer.of(context).beamToNamed('/'),
                  ),
                ],
              ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: IconButton(
            onPressed: () => Beamer.of(context).beamToNamed('/contact'),
            icon: const Icon(Icons.email_outlined),
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
