import 'package:flutter/material.dart';
import 'package:beamer/beamer.dart';

import '/constants.dart';
import 'appbar_menu_widget.dart';

class CustomAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppBarWidget({Key? key}) : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(55);

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
                borderRadius: BorderRadius.circular(180),
                child: Image.asset(
                  logo,
                  height: 45,
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
                      // const AppBarMenuWidget(
                      //   title: 'Contact',
                      //   route: '/contact',
                      // ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(32),
                          onTap: () =>
                              Beamer.of(context).beamToNamed('/contact'),
                          child: Container(
                            height: 45,
                            decoration: BoxDecoration(
                              color: Colors.orange[700],
                              borderRadius: BorderRadius.circular(32),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey[600]!,
                                  spreadRadius: 1,
                                  blurRadius: 15,
                                  offset: const Offset(4, 4),
                                ),
                                const BoxShadow(
                                  color: Colors.white,
                                  spreadRadius: 1,
                                  blurRadius: 15,
                                  offset: Offset(-4, -4),
                                ),
                              ],
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Colors.orange[600]!,
                                  Colors.orange[700]!,
                                  Colors.orange[800]!,
                                  Colors.orange[900]!,
                                ],
                                stops: const [0.1, 0.3, 0.8, 1],
                              ),
                            ),
                            child: const Center(
                              child: Padding(
                                padding: EdgeInsets.only(left: 16, right: 16),
                                child: Text(
                                  'Contact',
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      // Padding(
                      //   padding: const EdgeInsets.all(16),
                      //   child: PopupMenuButton<String>(
                      //     color: thirdColour,
                      //     child: const Text(
                      //       'Legal',
                      //       style: TextStyle(
                      //         color: colour,
                      //       ),
                      //     ),
                      //     itemBuilder: (context) {
                      //       return [
                      //         const PopupMenuItem<String>(
                      //           value: 'privacy',
                      //           child: Text(
                      //             'Privacy Policy',
                      //             style: TextStyle(color: colour),
                      //           ),
                      //         ),
                      //         const PopupMenuItem<String>(
                      //           value: 'terms',
                      //           child: Text(
                      //             'Terms & Conditions',
                      //             style: TextStyle(color: colour),
                      //           ),
                      //         ),
                      //       ];
                      //     },
                      //     onSelected: (value) =>
                      //         Beamer.of(context).beamToNamed('/$value'),
                      //   ),
                      // ),
                    ],
                  ),
                ],
              ),
      ),
      actions: mediaWidth > 750
          ? null
          : [
              SizedBox(
                height: 40,
                child: InkWell(
                  borderRadius: BorderRadius.circular(180),
                  onTap: () => Beamer.of(context).beamToNamed('/contact'),
                  child: Container(
                    height: 100,
                    // width: 150,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.orange[700],
                      // borderRadius: BorderRadius.circular(32),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[600]!,
                          spreadRadius: 1,
                          blurRadius: 15,
                          offset: const Offset(4, 4),
                        ),
                        const BoxShadow(
                          color: Colors.white,
                          spreadRadius: 1,
                          blurRadius: 15,
                          offset: Offset(-4, -4),
                        ),
                      ],
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.orange[600]!,
                          Colors.orange[700]!,
                          Colors.orange[800]!,
                          Colors.orange[900]!,
                        ],
                        stops: const [0.1, 0.3, 0.8, 1],
                      ),
                    ),
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.only(left: 16, right: 16),
                        child: Icon(
                          Icons.email_outlined,
                          color: thirdColour,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(8),
              //   child: IconButton(
              //     onPressed: () => Beamer.of(context).beamToNamed('/contact'),
              //     icon: const Icon(Icons.email_outlined),
              //     color: secondaryColour,
              //   ),
              // ),
            ],
    );
  }
}
