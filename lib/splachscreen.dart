import 'package:flutter/material.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:page_view/pview.dart';

class MainSplash_Secrren extends StatelessWidget {
  const MainSplash_Secrren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EasySplashScreen(
        logoWidth: 250,
        showLoader: true,
        durationInSeconds: 4,
        backgroundColor: Colors.grey,
        logo: Image.asset(
          'images/splash.jpg',
        ),
        loadingText: const Text(
          'Loading',
          style: TextStyle(fontSize: 29),
        ),
        navigator: const Pview(),
      ),
    );
  }
}
