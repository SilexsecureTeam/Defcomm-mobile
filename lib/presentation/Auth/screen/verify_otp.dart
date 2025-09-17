import 'package:defcomm_mobile/core/global.dart';
import 'package:defcomm_mobile/core/theme/app_colors.dart';
import 'package:defcomm_mobile/core/theme/app_fonts.dart';
import 'package:defcomm_mobile/presentation/Auth/screen/onboading.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({super.key});

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  String otpCode = '';
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

            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Verify OTP',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontFamily: AppFonts.defaultFont,
                        ),
                      ),
                      Text(
                        'Use PIN to unlock fast and',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: AppFonts.defaultFont,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        'secure way',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: AppFonts.defaultFont,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 30),

                  SizedBox(
                    width: 250,
                    child: PinCodeTextField(
                      onCompleted: (value) {
                        goToPage(context, page: OnboadingScreen());
                      },
                      appContext: context,
                      length: 4,
                      onChanged: (value) {
                        setState(() {
                          otpCode = value;
                        });
                      },
                      keyboardType: TextInputType.number,
                      pinTheme: PinTheme(
                        activeFillColor: AppColors.primaryColor,
                        borderWidth: 1,
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(15),
                        fieldHeight: 59.67,
                        fieldWidth: 52.21,
                        activeColor: Colors.grey,
                        selectedColor: AppColors.primaryColor,
                        inactiveColor: Colors.white,
                      ),
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
