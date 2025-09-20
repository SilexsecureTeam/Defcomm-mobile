import 'package:defcomm_mobile/core/global.dart';
import 'package:defcomm_mobile/core/theme/app_colors.dart';
import 'package:defcomm_mobile/presentation/dash_board/screens/calls.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({
    super.key,
    required this.title,
    required this.chatOnTap,
    required this.callOnTap,
    required this.driveOnTap,
    required this.secureOnTap,
    required this.militaryOnTap,
    required this.selectedTab,
  });
  final String title;
  final void Function()? chatOnTap;
  final void Function()? callOnTap;
  final void Function()? driveOnTap;
  final void Function()? secureOnTap;
  final void Function()? militaryOnTap;
  final int selectedTab;

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${widget.title}',
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20),

        SizedBox(
          width: double.infinity,
          child: Container(
            height: 72,
            decoration: BoxDecoration(
              color: Colors.black,
              border: Border(
                left: BorderSide(color: Color(0xFF759719), width: 6.34),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                spacing: 20,
                children: [
                  GestureDetector(
                    onTap: widget.chatOnTap!,
                    child: Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        color: AppColors.darkGreen,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Image.asset(
                        'assets/icon/chat.png',
                        width: 27.3,
                        height: 27.3,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: widget.callOnTap,
                    child: Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        color: AppColors.darkGreen,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Image.asset(
                        'assets/icon/Group.png',
                        width: 27.3,
                        height: 27.3,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: widget.driveOnTap,
                    child: Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        color: AppColors.darkGreen,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Image.asset(
                        'assets/icon/icons8.png',
                        width: 27.3,
                        height: 27.3,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: widget.secureOnTap,
                    child: Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        color: AppColors.darkGreen,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Image.asset(
                        'assets/icon/secure.png',
                        width: 27.4,
                        height: 27.4,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: widget.militaryOnTap,
                    child: Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        color: AppColors.darkGreen,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Image.asset(
                        'assets/icon/military.png',
                        width: 27.3,
                        height: 27.3,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

Widget _buildTab({required int index, required String icon}) {
  final bool isSelected = index == selectedTab;

  return GestureDetector(
    onTap: () => onTabSelected(index),
    child: Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: isSelected ? Colors.white : AppColors.darkGreen,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Image.asset(
        icon,
        width: 27.3,
        height: 27.3,
        color: isSelected ? Colors.black : null, // invert icon color if needed
      ),
    ),
  );
}

Widget _buildTab({required int index, required String icon}) {
  final bool isSelected = index == selectedTab;

  return GestureDetector(
    onTap: () => onTabSelected(index),
    child: Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: isSelected ? Colors.white : AppColors.darkGreen,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Image.asset(
        icon,
        width: 27.3,
        height: 27.3,
        color: isSelected ? Colors.black : null, // invert icon color if needed
      ),
    ),
  );
}
