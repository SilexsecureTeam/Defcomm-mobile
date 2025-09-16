import 'package:defcomm_mobile/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({super.key});

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
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

            Text('Verify OTP'),
          ],
        ),
      ),
    );
  }
}
