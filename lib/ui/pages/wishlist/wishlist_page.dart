import 'package:flutter/material.dart';
import 'package:thriftinc/theme.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          backgroundColor: backgroundColor1,
          centerTitle: true,
          title: const Text(
            'Favorite Shoes',
            style: TextStyle(color: Colors.white),
          ),
          elevation: 0,
          automaticallyImplyLeading: false,
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            color: backgroundColor3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/image_wishlist.png',
                  width: 74,
                ),
                const SizedBox(
                  height: 23,
                ),
                Text(
                  ' You don\'t have dream shoes?',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  'Let\'s find your favorite shoes',
                  style: secondaryTextStyle,
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 44,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 24,
                      ),
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      'Explore Store',
                      style: primaryTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
