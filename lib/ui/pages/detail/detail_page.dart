import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:thriftinc/models/product_model.dart';
import 'package:thriftinc/providers/product_provider.dart';
import 'package:thriftinc/theme.dart';

class DetailPage extends StatelessWidget {
  const DetailPage(this.product, {super.key});
  final Datum product;

  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);

    List familiarShoes = [
      'assets/image_shoes.png',
      'assets/image_shoes2.png',
      'assets/image_shoes3.png',
      'assets/image_shoes4.png',
      'assets/image_shoes5.png',
      'assets/image_shoes6.png',
      'assets/image_shoes7.png',
      'assets/image_shoes8.png',
    ];

    Future<void> showSuccessDialog() async {
      return showDialog(
        context: context,
        builder: (BuildContext context) => SizedBox(
          width: MediaQuery.of(context).size.width - (2 * defaultMargin),
          child: AlertDialog(
            backgroundColor: backgroundColor3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.close,
                        color: primaryTextColor,
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/icon_success.png',
                    width: 100,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Hurray :)',
                    style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Item added successfully',
                    style: secondaryTextStyle,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 154,
                    height: 44,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/cart');
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        'View My Cart',
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
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor6,
      body: Stack(
        children: [
          Positioned(
            top: 60,
            left: 0,
            right: 0,
            child: Column(
              children: [
                CarouselSlider(
                  items: product.galleries
                      .map(
                        (index) => Image.network(
                          index.url.replaceAll(
                              'thriftinc-be.test', '192.168.20.109:8000'),
                          fit: BoxFit.cover,
                        ),
                      )
                      .toList(),
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    height: 200,
                    initialPage: 0,
                    enableInfiniteScroll: false,
                    onPageChanged: (index, reason) {
                      productProvider.showedImage(index);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: product.galleries.asMap().entries.map((e) {
                      return Container(
                        width: productProvider.currentIndex == e.key ? 16 : 4,
                        height: 4,
                        margin: const EdgeInsets.symmetric(horizontal: 2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: primaryColor),
                      );
                    }).toList(),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 30,
            left: 15,
            right: 15,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.chevron_left,
                  ),
                ),
                Icon(
                  Icons.shopping_bag,
                  color: backgroundColor1,
                ),
              ],
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.6,
            minChildSize: 0.6,
            builder: (context, scrollController) => Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(24),
                ),
                color: backgroundColor1,
              ),
              child: SingleChildScrollView(
                controller: scrollController,
                child: Column(
                  children: [
                    // NOTE: HEADER
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
                                  product.name,
                                  style: primaryTextStyle.copyWith(
                                    fontSize: 18,
                                    fontWeight: semiBold,
                                  ),
                                ),
                                Text(
                                  product.category.name,
                                  style: secondaryTextStyle.copyWith(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              bool i = false;
                              if (i == true) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    backgroundColor: secondaryColor,
                                    content: const Text(
                                      'Has been added to the Wishlist',
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    backgroundColor: alertColor,
                                    content: const Text(
                                      'Has been removed from the Wishlist',
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                );
                              }
                            },
                            child: Image.asset(
                              true
                                  ? 'assets/button_wishlist_blue.png'
                                  : 'assets/button_wishlist.png',
                              width: 46,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // NOTE: PRICE
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(
                        top: 20,
                        left: defaultMargin,
                        right: defaultMargin,
                      ),
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: backgroundColor2,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Price starts from',
                            style: primaryTextStyle,
                          ),
                          Text(
                            NumberFormat.currency(
                                    locale: 'id',
                                    symbol: 'Rp',
                                    decimalDigits: 2)
                                .format(product.price),
                            style: priceTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: semiBold,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // NOTE: DESCRIPTION
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(
                        top: defaultMargin,
                        left: defaultMargin,
                        right: defaultMargin,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Description',
                            style: primaryTextStyle.copyWith(
                              fontWeight: medium,
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Text(
                            product.description,
                            style: subtitleTextStyle.copyWith(
                              fontWeight: light,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ),

                    // NOTE: FAMILIAR SHOES
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(
                        top: defaultMargin,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: defaultMargin,
                            ),
                            child: Text(
                              'Similar Product',
                              style: primaryTextStyle.copyWith(
                                fontWeight: medium,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                                children:
                                    familiarShoes.asMap().entries.map((e) {
                              return Container(
                                width: 54,
                                height: 54,
                                margin: EdgeInsets.only(
                                  left: e.key == 0 ? defaultMargin : 0,
                                  right: 16,
                                ),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(e.value),
                                  ),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                              );
                            }).toList()),
                          )
                        ],
                      ),
                    ),

                    // NOTE: BUTTONS
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.all(defaultMargin),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 54,
                              height: 54,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/button_chat.png',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 54,
                              child: TextButton(
                                onPressed: () {
                                  showSuccessDialog();
                                },
                                style: TextButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  backgroundColor: primaryColor,
                                ),
                                child: Text(
                                  'Add to Cart',
                                  style: primaryTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: semiBold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
