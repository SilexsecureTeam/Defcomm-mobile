import 'package:defcomm_mobile/core/global.dart';
import 'package:defcomm_mobile/core/theme/app_colors.dart';
import 'package:defcomm_mobile/core/theme/app_fonts.dart';
import 'package:defcomm_mobile/presentation/otp/screen/verify_otp.dart';
import 'package:defcomm_mobile/presentation/sign/widgets/phone_number_field.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  var phoneController = TextEditingController();
  bool syncContacts = false;
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
                //crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sign in',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'With Defcomm Credentials',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: AppFonts.defaultFont,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20),
                  PhoneNumberField(),
                  SizedBox(height: 200),
                ],
              ),
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Stack(
                  children: [
                    // Background image fills the stack
                    SizedBox(
                      width: 384.76,
                      height: 385.19,
                      child: Image.asset(
                        'assets/img/gallery_glass_container.png',
                        fit: BoxFit.cover,
                      ),
                    ),

                    // Row near the top
                    Positioned(
                      top: 60,
                      left: 30,
                      right: 26,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Sync Contacts",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          Switch(
                            value: syncContacts,
                            onChanged: (value) {
                              setState(() {
                                syncContacts = value;
                              });
                            },
                            activeColor: Colors.green,
                            inactiveThumbColor: Colors.white,
                            inactiveTrackColor: Colors.grey,
                          ),
                        ],
                      ),
                    ),

                    // Column at the bottom
                    Positioned(
                      bottom: 50,
                      left: 30,
                      right: 26,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          GestureDetector(
                            onTap: () {
                              goToPage(context, page: VerifyOtpScreen());
                            },
                            child: Container(
                              height: 62,
                              width: 62,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(42),
                                color: Colors.green.withOpacity(0.2),
                              ),
                              child: const Icon(
                                Icons.navigate_next,
                                size: 40,
                                color: Colors.green,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            'Use online instead of local account...',
                            style: TextStyle(fontSize: 12, color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
