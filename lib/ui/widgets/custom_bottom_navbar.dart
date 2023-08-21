import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thriftinc/providers/bottom_navbar_provider.dart';
import 'package:thriftinc/theme.dart';

class CustomBottomNavbar extends StatelessWidget {
  const CustomBottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedProvider = Provider.of<BottomNavbarProvider>(context);
    return BottomAppBar(
      color: backgroundColor4,
      shape: const CircularNotchedRectangle(),
      notchMargin: 12,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () => selectedProvider.selectedPage(0),
            child: Image.asset(
              'assets/icon_home.png',
              width: 21,
              color: selectedProvider.currentIndex == 0
                  ? primaryColor
                  : const Color(0xff808191),
            ),
          ),
          GestureDetector(
            onTap: () => selectedProvider.selectedPage(1),
            child: Image.asset(
              'assets/icon_chat.png',
              width: 20,
              color: selectedProvider.currentIndex == 1
                  ? primaryColor
                  : const Color(0xff808191),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          GestureDetector(
            onTap: () => selectedProvider.selectedPage(2),
            child: Image.asset(
              'assets/icon_wishlist.png',
              width: 20,
              color: selectedProvider.currentIndex == 2
                  ? primaryColor
                  : const Color(0xff808191),
            ),
          ),
          GestureDetector(
            onTap: () => selectedProvider.selectedPage(3),
            child: Image.asset(
              'assets/icon_profile.png',
              width: 18,
              color: selectedProvider.currentIndex == 3
                  ? primaryColor
                  : const Color(0xff808191),
            ),
          ),
        ],
      ),
    );
  }
}
