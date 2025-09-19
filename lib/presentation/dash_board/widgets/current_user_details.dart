import 'package:defcomm_mobile/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CurrentUserDetails extends StatelessWidget {
  const CurrentUserDetails({super.key, required this.imageUrl});

  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('${imageUrl}', height: 24, width: 24),
        SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Col Adamu j',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              'Class OPS',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
        Spacer(),
        Container(
          width: 31.5,
          height: 31.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.darkGreen,
          ),
          child: Icon(Icons.add),
        ),
      ],
    );
  }
}
