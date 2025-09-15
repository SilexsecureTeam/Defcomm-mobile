import 'package:flutter/material.dart';

class FourthSplashScreen extends StatefulWidget {
  const FourthSplashScreen({super.key});

  @override
  State<FourthSplashScreen> createState() => _FourthSplashScreenState();
}

class _FourthSplashScreenState extends State<FourthSplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.green.withOpacity(0.6), Colors.transparent],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 90),
              child: SizedBox(
                child: Image.asset(
                  'assets/img/decfom_img.png',
                  height: 66.4,
                  width: 70.3,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
