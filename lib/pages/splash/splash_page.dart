import 'dart:async';

import 'package:flutter/material.dart';
import 'package:thriftinc/theme.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushNamed(context, '/sign_in'),
    );

    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(
        child: Container(
          width: 130,
          height: 150,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/image_splash.png'))),
        ),
      ),
    );
  }
}
