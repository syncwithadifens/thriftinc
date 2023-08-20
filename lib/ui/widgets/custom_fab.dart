import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thriftinc/providers/bottom_navbar_provider.dart';
import 'package:thriftinc/theme.dart';

class CustomFab extends StatelessWidget {
  const CustomFab({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedProvider = Provider.of<BottomNavbarProvider>(context);

    return FloatingActionButton(
      onPressed: () => selectedProvider.selectedPage(4),
      backgroundColor: secondaryColor,
      shape: const CircleBorder(),
      child: Image.asset(
        'assets/icon_cart.png',
        width: 20,
      ),
    );
  }
}
