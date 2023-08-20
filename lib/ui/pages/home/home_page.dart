import 'package:flutter/material.dart';
import 'package:thriftinc/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: defaultMargin,
            left: defaultMargin,
            right: defaultMargin,
          ),
          child: Row(
            children: [
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
                      '@imauser',
                      style: subtitleTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 54,
                height: 54,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.amber),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: defaultMargin,
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: defaultMargin,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 10,
                  ),
                  margin: const EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: primaryColor,
                  ),
                  child: Text(
                    'All Shoes',
                    style: primaryTextStyle.copyWith(
                      fontSize: 13,
                      fontWeight: medium,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 10,
                  ),
                  margin: const EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: subtitleColor,
                    ),
                    color: transparentColor,
                  ),
                  child: Text(
                    'Running',
                    style: subtitleTextStyle.copyWith(
                      fontSize: 13,
                      fontWeight: medium,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 10,
                  ),
                  margin: const EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: subtitleColor,
                    ),
                    color: transparentColor,
                  ),
                  child: Text(
                    'Training',
                    style: subtitleTextStyle.copyWith(
                      fontSize: 13,
                      fontWeight: medium,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 10,
                  ),
                  margin: const EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: subtitleColor,
                    ),
                    color: transparentColor,
                  ),
                  child: Text(
                    'Basketball',
                    style: subtitleTextStyle.copyWith(
                      fontSize: 13,
                      fontWeight: medium,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 10,
                  ),
                  margin: const EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: subtitleColor,
                    ),
                    color: transparentColor,
                  ),
                  child: Text(
                    'Hiking',
                    style: subtitleTextStyle.copyWith(
                      fontSize: 13,
                      fontWeight: medium,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: defaultMargin,
            left: defaultMargin,
            right: defaultMargin,
          ),
          child: Text(
            'Popular Products',
            style: primaryTextStyle.copyWith(
              fontSize: 22,
              fontWeight: semiBold,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: defaultMargin,
            left: defaultMargin,
            right: defaultMargin,
          ),
          child: Text(
            'New Arrivals',
            style: primaryTextStyle.copyWith(
              fontSize: 22,
              fontWeight: semiBold,
            ),
          ),
        )
      ],
    );
  }
}
