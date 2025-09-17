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
                  vertical: 40,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 164,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 212,
                                height: 164,
                                decoration: BoxDecoration(
                                  color: Color(0xFF36460A),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 13,
                                    vertical: 13,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                    decoration: BoxDecoration(
                                      color: Color(0xFF36460A),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            children: [
                                              Image.asset(
                                                'assets/icon/Store.png',
                                                width: 31,
                                                height: 31,
                                              ),
                                              SizedBox(width: 10),
                                              Image.asset(
                                                'assets/icon/bluetooth.png',
                                                width: 31,
                                                height: 31,
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 5),
                                          Row(
                                            children: [
                                              Image.asset(
                                                'assets/icon/Store2.png',
                                                width: 31,
                                                height: 31,
                                              ),
                                              SizedBox(width: 10),
                                              Image.asset(
                                                'assets/icon/camera.png',
                                                width: 31,
                                                height: 31,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 104,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          'assets/icon/users.png',
                                          color: AppColors.darkGreen,
                                          width: 26.94,
                                          height: 20.2,
                                        ),
                                        Text(
                                          'Secure Group',
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: AppColors.lightBlack,
                                          ),
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
                    SizedBox(height: 50),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'SECURE COMMUNICATIONS',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        SizedBox(height: 20),
                        SizedBox(
                          height: 200,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Image.asset(
                                'assets/img/decfom_img.png',
                                width: 88,
                                height: 88,
                                color: Colors.red,
                              ),
                              Image.asset(
                                'assets/img/decfom_img.png',
                                width: 88,
                                height: 88,
                                color: Colors.red,
                              ),
                              Image.asset(
                                'assets/img/decfom_img.png',
                                width: 88,
                                height: 88,
                                color: Colors.red,
                              ),
                              Image.asset(
                                'assets/img/decfom_img.png',
                                width: 88,
                                height: 88,
                                color: Colors.red,
                              ),
                              Image.asset(
                                'assets/img/decfom_img.png',
                                width: 88,
                                height: 88,
                                color: Colors.red,
                              ),
                              Image.asset(
                                'assets/img/decfom_img.png',
                                width: 88,
                                height: 88,
                                color: Colors.red,
                              ),
                              Image.asset(
                                'assets/img/decfom_img.png',
                                width: 88,
                                height: 88,
                                color: Colors.red,
                              ),
                            ],
                          ),
                        ),
                      ],
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
