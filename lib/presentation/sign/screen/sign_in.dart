import 'package:defcomm_mobile/core/theme/app_colors.dart';
import 'package:defcomm_mobile/core/theme/app_fonts.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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
            Align(
              alignment: Alignment.topRight,
              child: SizedBox(
                child: Image.asset(
                  'assets/img/decfom_img.png',
                  height: 66.4,
                  width: 70.3,
                  color: Colors.white,
                ),
              ),
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sign in',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  'With Defcomm Credentials',
                  style: TextStyle(
                    fontSize: 55,
                    fontFamily: AppFonts.defaultFont,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
