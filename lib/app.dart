import 'package:defcomm_mobile/presentation/splash/screen/splash.dart';
import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      home: const SecondSplash(),
    );
  }
}
