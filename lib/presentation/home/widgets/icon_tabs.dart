import 'package:flutter/material.dart';

class IconTabs extends StatefulWidget {
  const IconTabs({super.key});

  @override
  State<IconTabs> createState() => _IconTabsState();
}

class _IconTabsState extends State<IconTabs> {
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 17,
      children: [
        Container(
          height: 71.21,
          width: 74.71,
          color: Color(0xFFC6FC2B),
          child: Image.asset('assets/icon/call.png', width: 39, height: 39),
        ),
        Container(
          height: 71.21,
          width: 74.71,
          color: Colors.white,
          child: Image.asset(
            'assets/icon/walkie-talkie.png',
            width: 39,
            height: 39,
          ),
        ),
        Container(
          height: 71.21,
          width: 74.71,
          color: Colors.white,
          child: Image.asset(
            'assets/icon/Group5336.png',
            width: 39,
            height: 39,
          ),
        ),
        Container(
          height: 71.21,
          width: 74.71,
          color: Colors.white,
          child: Image.asset(
            'assets/img/decfom_img.png',
            width: 52,
            height: 52,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
