import 'package:flutter/material.dart';
import 'package:seclob_machine_task/core/constants/app_images.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(AppImages.splashBgImg);
  }
}