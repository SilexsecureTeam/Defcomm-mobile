import 'dart:async';
import 'package:defcomm_mobile/core/theme/app_colors.dart';
import 'package:defcomm_mobile/presentation/splash/screen/fouth_splash.dart';
import 'package:defcomm_mobile/presentation/splash/screen/second_splash.dart';
import 'package:flutter/material.dart';

class ThirdSplashScreen extends StatefulWidget {
  const ThirdSplashScreen({super.key});

  @override
  State<ThirdSplashScreen> createState() => _ThirdSplashScreenState();
}

class _ThirdSplashScreenState extends State<ThirdSplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      if (mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const FourthSplashScreen()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage("assets/img/soldier_img.png"),
                  fit: BoxFit.fill,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5),
                    BlendMode.darken,
                  ),
                ),
              ),
            ),

            // Overlay gradient (green tint)
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors.primaryColor.withOpacity(0.6),
                    Colors.transparent,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 90),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,

                  children: [
                    Image.asset(
                      'assets/img/wiky_toky.png',
                      height: 140,
                      width: 95,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
