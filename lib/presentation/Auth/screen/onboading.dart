import 'package:defcomm_mobile/core/theme/app_colors.dart';
import 'package:defcomm_mobile/core/theme/app_fonts.dart';
import 'package:defcomm_mobile/presentation/Auth/widgets/check_point_items.dart';
import 'package:flutter/material.dart';
import 'package:simple_animation_progress_bar/simple_animation_progress_bar.dart';

class OnboadingScreen extends StatefulWidget {
  const OnboadingScreen({super.key});

  @override
  State<OnboadingScreen> createState() => _OnboadingScreenState();
}

class _OnboadingScreenState extends State<OnboadingScreen> {
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
            Positioned(
              top: 120,
              left: 30,
              right: 26,
              child: SizedBox(
                child: Image.asset(
                  'assets/img/decfom_img.png',
                  height: 142.68,
                  width: 151.1,
                  color: Colors.white,
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Setting Up Account...',
                    style: TextStyle(
                      color: AppColors.lightGreen,
                      fontSize: 24,
                      fontFamily: AppFonts.defaultFont,
                    ),
                  ),
                  Text(
                    'Do not close this page',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: AppFonts.defaultFont,
                      color: AppColors.customGray,
                    ),
                  ),

                  SizedBox(height: 60),
                  SimpleAnimationProgressBar(
                    height: 12, // thin like your screenshot
                    width: 266, // adjust to fit your layout
                    backgroundColor: Colors.grey.shade800, // background track
                    foregroundColor: Colors.grey.shade400, // progress color
                    ratio: 0.7, // progress percentage (0.0 to 1.0)
                    direction: Axis.horizontal,
                    curve: Curves.fastLinearToSlowEaseIn,
                    borderRadius: BorderRadius.circular(20),
                    duration: Duration(seconds: 10), // rounded edges
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 120,
              left: 55,
              right: 30,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  CheckPointItem(
                    text: "Authenticate users with OTP or certificates",
                  ),
                  SizedBox(height: 12),
                  CheckPointItem(
                    text: "Restrict access to authorized devices only",
                  ),
                  SizedBox(height: 12),
                  CheckPointItem(text: "Establishing encrypted connections"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
