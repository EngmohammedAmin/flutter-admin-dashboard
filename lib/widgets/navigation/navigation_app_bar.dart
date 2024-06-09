// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'navigation_title.dart';

class NavigationAppBar extends StatelessWidget implements PreferredSizeWidget {
  const NavigationAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const NavigationTitle(),
      centerTitle: false,
      elevation: 4,
      actions: [
        const Text('anonymous'),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: PopupMenuButton<String>(
            onSelected: (value) {
              if (value == 'SignOut') {
                print(value);
                // Sign out logic
              } else if (value == 'Settings') {
                print(value);
                // Settings logic
              } else if (value == 'Help') {
                print(value);
                // Help logic
              }
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 'SignOut',
                child: const Text('Sign out'),
                onTap: () {
                  // Sign out logic
                },
              ),
              PopupMenuItem(
                value: 'Settings',
                child: const Text('Settings'),
                onTap: () {
                  // Settings logic
                },
              ),
              PopupMenuItem(
                value: 'Help',
                child: const Text('Help'),
                onTap: () {
                  // Help logic
                },
              ),
            ],
            child: const Icon(Icons.account_circle_outlined),
          ),
        ),
        const Gap(8),
      ],
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
