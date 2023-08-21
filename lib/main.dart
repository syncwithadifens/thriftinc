import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thriftinc/providers/bottom_navbar_provider.dart';
import 'package:thriftinc/providers/product_provider.dart';
import 'package:thriftinc/ui/pages/Auth/sign_in_page.dart';
import 'package:thriftinc/ui/pages/auth/sign_up_page.dart';
import 'package:thriftinc/ui/pages/cart/cart_page.dart';
import 'package:thriftinc/ui/pages/chat/chat_page.dart';
import 'package:thriftinc/ui/pages/home/home_page.dart';
import 'package:thriftinc/ui/pages/main_page.dart';
import 'package:thriftinc/ui/pages/profile/profile_page.dart';
import 'package:thriftinc/ui/pages/splash/splash_page.dart';
import 'package:thriftinc/ui/pages/wishlist/wishlist_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => BottomNavbarProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProductProvider(),
        )
      ],
      child: MaterialApp(
        title: 'Thriftinc',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routes: {
          '/': (context) => const SplashPage(),
          '/sign_in': (context) => const SignInPage(),
          '/sign_up': (context) => const SignUpPage(),
          '/main': (context) => const MainPage(),
          '/home': (context) => const HomePage(),
          '/chat': (context) => const ChatPage(),
          '/wishlist': (context) => const WishlistPage(),
          '/profile': (context) => const ProfilePage(),
          '/cart': (context) => const CartPage(),
        },
      ),
    );
  }
}
