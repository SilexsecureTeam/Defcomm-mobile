import 'package:flutter/material.dart';

class CurvedNavBarPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..color = const Color(0xFF3D5008) // Olive green top wave color
          ..style = PaintingStyle.fill;

    final path = Path();
    path.lineTo(0, size.height * 0.4);
    path.quadraticBezierTo(size.width * 0.10, 0, size.width * 0.25, 0);
    path.quadraticBezierTo(size.width * 0.5, 0, size.width * 0.75, 0);
    path.quadraticBezierTo(size.width * 0.90, 0, size.width, size.height * 0.4);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Stack(
        children: [
          // Curved background
          CustomPaint(
            size: const Size(double.infinity, 70),
            painter: CurvedNavBarPainter(),
          ),

          // Black base background
          Container(color: Colors.black),

          // Icons Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildNavItem(Icons.gps_fixed, 0),
              _buildNavItem(Icons.message, 1),
              _buildNavItem(Icons.call, 2),
              _buildNavItem(Icons.person, 3),
              _buildNavItem(Icons.settings, 4),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () => onTap(index),
      child: Icon(
        icon,
        size: 28,
        color: currentIndex == index ? Colors.white : Colors.white70,
      ),
    );
  }
}
