import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thriftinc/providers/bottom_navbar_provider.dart';
import 'package:thriftinc/theme.dart';
import 'package:thriftinc/ui/pages/cart/cart_page.dart';
import 'package:thriftinc/ui/pages/chat/chat_page.dart';
import 'package:thriftinc/ui/pages/home/home_page.dart';
import 'package:thriftinc/ui/pages/profile/profile_page.dart';
import 'package:thriftinc/ui/pages/wishlist/wishlist_page.dart';
import 'package:thriftinc/ui/widgets/custom_bottom_navbar.dart';
import 'package:thriftinc/ui/widgets/custom_fab.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedProvider = Provider.of<BottomNavbarProvider>(context);

    Widget selectedPage() {
      switch (selectedProvider.currentIndex) {
        case 0:
          return const HomePage();
        case 1:
          return const ChatPage();
        case 2:
          return const WishlistPage();
        case 3:
          return const ProfilePage();
        case 4:
          return const CartPage();
        default:
          return const HomePage();
      }
    }

    return Scaffold(
      extendBody: true,
      backgroundColor: backgroundColor1,
      floatingActionButton: const CustomFab(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const CustomBottomNavbar(),
      body: selectedPage(),
    );
  }
}
