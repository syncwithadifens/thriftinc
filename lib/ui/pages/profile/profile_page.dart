import 'package:flutter/material.dart';
import 'package:thriftinc/theme.dart';
import 'package:thriftinc/ui/widgets/menu_item.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          backgroundColor: backgroundColor1,
          automaticallyImplyLeading: false,
          elevation: 0,
          flexibleSpace: SafeArea(
            child: Container(
              padding: EdgeInsets.all(
                defaultMargin,
              ),
              child: Row(
                children: [
                  Container(
                    width: 54,
                    height: 54,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.amber),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hallo, User',
                          style: primaryTextStyle.copyWith(
                            fontSize: 24,
                            fontWeight: semiBold,
                          ),
                        ),
                        Text(
                          '@iamuser',
                          style: subtitleTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/sign_in', (route) => false);
                    },
                    child: Image.asset(
                      'assets/button_exit.png',
                      width: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            decoration: BoxDecoration(
              color: backgroundColor3,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Account',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/edit-profile');
                  },
                  child: const MenuItem(
                    text: 'Edit Profile',
                  ),
                ),
                const MenuItem(
                  text: 'Your Orders',
                ),
                const MenuItem(
                  text: 'Help',
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'General',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                const MenuItem(
                  text: 'Privacy & Policy',
                ),
                const MenuItem(
                  text: 'Term of Service',
                ),
                const MenuItem(
                  text: 'Rate App',
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
