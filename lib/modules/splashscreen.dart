import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ramadan_kareem/modules/homescreen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        backgroundColor: Colors.white,
        splashTransition: SplashTransition.scaleTransition,
        splash: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
              fit: BoxFit.cover,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'GDSC',
                  style: GoogleFonts.notoSerif(
                      color: Colors.red, fontWeight: FontWeight.w700),
                ),
                Text(
                  'Al-Azhar University',
                  style: GoogleFonts.notoSerif(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
              ],
            )
          ],
        ),
        nextScreen: const HomeScreen(),
      ),
    );
  }
}
