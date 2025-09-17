import 'package:flutter/material.dart';

class CheckPointItem extends StatelessWidget {
  final String text;
  const CheckPointItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Circle with check icon
        Container(
          height: 24,
          width: 24,
          decoration: BoxDecoration(
            color: Colors.green.shade700, // circle background
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.check, color: Colors.white, size: 16),
        ),
        const SizedBox(width: 10),

        // Text
        Expanded(
          child: Text(
            text,
            style: const TextStyle(fontSize: 12, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
