import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class GoogleNavbar extends StatelessWidget {
  const GoogleNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, bottom: 15, right: 25),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: GNav(
            tabBorderRadius: 16,
            backgroundColor: Colors.grey.shade800.withOpacity(0.9),
            tabs: [
              GButton(
                onPressed: () {},
                icon: CupertinoIcons.home,
                iconColor: Colors.grey,
                iconActiveColor: Colors.grey,
              ),
              GButton(
                onPressed: () {},
                icon: CupertinoIcons.search,
                iconColor: Colors.grey,
                iconActiveColor: Colors.grey,
              ),
              const GButton(
                icon: CupertinoIcons.double_music_note,
                iconColor: Colors.grey,
                iconActiveColor: Colors.grey,
              ),
              const GButton(
                icon: CupertinoIcons.person,
                iconColor: Colors.grey,
                iconActiveColor: Colors.grey,
              )
            ]),
      ),
    );
  }
}
