import 'package:defcomm_mobile/core/theme/app_colors.dart';
import 'package:defcomm_mobile/core/theme/app_fonts.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF3D5008), const Color(0xFF000000)],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 16,
                ),
                child: SizedBox(
                  height: 164,
                  child: Row(
                    children: [
                      Container(
                        width: 212,
                        height: 164,
                        decoration: BoxDecoration(color: Color(0xFF36460A)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 13,
                            vertical: 13,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/img/finger_print.png',
                                    width: 9.29,
                                    height: 11.87,
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    'SECURE MODE ACTIVE',
                                    style: TextStyle(
                                      color: AppColors.lightGreen,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 7),
                              Text(
                                '11:00',
                                style: TextStyle(
                                  fontSize: 48,
                                  color: Colors.white,
                                  fontFamily: AppFonts.defaultFont,
                                ),
                              ),
                              //SizedBox(height: 3),
                              Text(
                                'Sun, 16 March 2025',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      //SizedBox(width: 50),
                      Column(
                        spacing: 8,
                        children: [
                          Container(
                            width: 104,
                            height: 112,
                            decoration: BoxDecoration(color: Color(0xFF36460A)),
                          ),
                          Container(
                            width: 104,
                            height: 40,
                            decoration: BoxDecoration(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
