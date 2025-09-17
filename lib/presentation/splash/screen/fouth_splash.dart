import 'dart:async';

import 'package:defcomm_mobile/core/theme/app_colors.dart';
import 'package:defcomm_mobile/presentation/Auth/screen/sign_in.dart';
import 'package:flutter/material.dart';

class FourthSplashScreen extends StatefulWidget {
  const FourthSplashScreen({super.key});

  @override
  State<FourthSplashScreen> createState() => _FourthSplashScreenState();
}

class _FourthSplashScreenState extends State<FourthSplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      if (mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const SignInPage()),
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
            SizedBox(
              child: Image.asset(
                'assets/img/decfom_img.png',
                height: 66.4,
                width: 70.3,
                color: Colors.white,
              ),
            ),

            Align(
              heightFactor: 20,
              //alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  SizedBox(height: 150),
                  Text(
                    'Discover',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'A NEW SECURE',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: AppColors.lightGreen,
                      decoration: TextDecoration.lineThrough,
                      decorationThickness: 2,
                      decorationColor: AppColors.lightGreen,
                    ),
                  ),
                  Text(
                    'TECHNOLOGY',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 40),
                  Text(
                    'Experience',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Absolute Privacy',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.lightGreen,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Through Messaging',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
