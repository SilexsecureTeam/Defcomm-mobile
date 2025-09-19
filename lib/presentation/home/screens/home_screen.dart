import 'package:carousel_slider/carousel_slider.dart';
import 'package:defcomm_mobile/core/global.dart';
import 'package:defcomm_mobile/core/theme/app_colors.dart';
import 'package:defcomm_mobile/core/theme/app_fonts.dart';
import 'package:defcomm_mobile/presentation/dash_board/screens/calls.dart';
import 'package:defcomm_mobile/presentation/home/widgets/dash_board.dart';
import 'package:defcomm_mobile/presentation/home/widgets/icon_tabs.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CarouselSliderController _carouselController =
      CarouselSliderController();
  bool secureMode = true;

  int _currentIndex = 0;
  final List<Map<String, String>> newsItems = [
    {
      "title": "Defcomm Meet Defence Signal",
      "subtitle":
          "The Defcomm team is scheduled to meet with the Army Signal Intelligence Corps on April 22, 2025, at the Signal Office in Lagos.",
    },
    {
      "title": "Cyber Drill Exercise",
      "subtitle":
          "Our annual cyber resilience exercise will hold on May 12, 2025. Stay prepared and ensure your systems are updated.",
    },
    {
      "title": "New Communication Tools",
      "subtitle":
          "Defcomm is introducing new secure communication channels for all teams starting June 2025.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Background gradient
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF3D5008), Color(0xFF000000)],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),

            // Scrollable content
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 40,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Secure mode + clock widget
                    SizedBox(
                      height: 164,
                      child: Row(
                        children: [
                          Container(
                            width: 212,
                            height: 164,
                            decoration: const BoxDecoration(
                              color: Color(0xFF36460A),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(13),
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
                                      const SizedBox(width: 8),
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
                                  const SizedBox(height: 7),
                                  Text(
                                    '11:00',
                                    style: TextStyle(
                                      fontSize: 48,
                                      color: Colors.white,
                                      fontFamily: AppFonts.defaultFont,
                                    ),
                                  ),
                                  const Text(
                                    'Sun, 16 March 2025',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Spacer(),
                          Column(
                            spacing: 8,
                            children: [
                              Container(
                                width: 104,
                                height: 112,
                                color: const Color(0xFF36460A),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(
                                            'assets/icon/Store.png',
                                            width: 31,
                                            height: 31,
                                          ),
                                          const SizedBox(width: 10),
                                          Image.asset(
                                            'assets/icon/bluetooth.png',
                                            width: 31,
                                            height: 31,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 5),
                                      Row(
                                        children: [
                                          Image.asset(
                                            'assets/icon/Store2.png',
                                            width: 31,
                                            height: 31,
                                          ),
                                          const SizedBox(width: 10),
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
                                color: Colors.white,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/icon/users.png',
                                      color: AppColors.darkGreen,
                                      width: 26.94,
                                      height: 20.2,
                                    ),
                                    const SizedBox(width: 4),
                                    Text(
                                      'Secure Group',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: AppColors.lightBlack,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),

                    DashBoard(
                      title: 'SECURE COMMUNICATIONS',
                      chatOnTap: () {},
                      callOnTap: goToPage(context, page: CallsScreen()),
                      driveOnTap: () {},
                      secureOnTap: () {},
                      militaryOnTap: () {},
                    ),
                    const SizedBox(height: 50),

                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Show All',
                        style: TextStyle(
                          decorationThickness: 2,
                          decorationColor: Colors.white,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),

                    const SizedBox(height: 30),

                    SizedBox(
                      height: 70,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [IconTabs()],
                      ),
                    ),

                    // Carousel section
                    const SizedBox(height: 20),
                    CarouselSlider.builder(
                      carouselController: _carouselController,
                      itemCount: newsItems.length,
                      itemBuilder: (context, index, realIdx) {
                        final item = newsItems[index];
                        return Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(16),
                          margin: const EdgeInsets.symmetric(horizontal: 6),
                          color: const Color(0xFFDFF6A5),

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item['title']!,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                item['subtitle']!,
                                style: const TextStyle(
                                  fontSize: 13,
                                  color: Colors.black87,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      options: CarouselOptions(
                        height: 160,
                        autoPlay: true,
                        enlargeCenterPage: true,
                        viewportFraction: 1.1,
                        onPageChanged: (index, reason) {
                          setState(() => _currentIndex = index);
                        },
                      ),
                    ),

                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:
                          newsItems.asMap().entries.map((entry) {
                            final idx = entry.key;
                            final active = idx == _currentIndex;
                            return GestureDetector(
                              onTap:
                                  () => _carouselController.animateToPage(idx),
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 250),
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 4,
                                ),
                                width: active ? 16 : 8,
                                height: 8,
                                decoration: BoxDecoration(
                                  color:
                                      active
                                          ? const Color(0xFF8BC34A)
                                          : Colors.white54,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            );
                          }).toList(),
                    ),

                    const SizedBox(height: 50),

                    // Secure mode row
                    Row(
                      children: [
                        Opacity(
                          opacity: 0.9,
                          child: Container(
                            width: 161,
                            height: 43,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 13,
                              vertical: 8,
                            ),
                            color: const Color(0xFF2E3B0A),
                            child: Row(
                              children: [
                                const Text(
                                  "SECURE MODE",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Spacer(),
                                Transform.scale(
                                  scale: 0.7,
                                  child: Switch(
                                    value: secureMode,
                                    onChanged: (val) {
                                      setState(() => secureMode = val);
                                    },
                                    activeColor: const Color(0xFF8BC34A),
                                    inactiveThumbColor: Colors.grey,
                                    inactiveTrackColor: AppColors.lightGreen,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Spacer(),
                        Opacity(
                          opacity: 0.9,
                          child: Container(
                            width: 161,
                            height: 43,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                            color: const Color(0xFF2E3B0A),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  'assets/icon/menu.png',
                                  width: 10.67,
                                  height: 10.67,
                                ),
                                const SizedBox(width: 6),
                                const Text(
                                  "ALL APPLICATIONS",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
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
