// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seclob_machine_task/core/constants/app_images.dart';
import 'package:seclob_machine_task/viewmodel/auth_viewmodel.dart';
import 'package:seclob_machine_task/views/onboarding/onboarding1.dart';
import 'package:seclob_machine_task/views/widgets/bottom_nav.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
    _initializeApp();
    super.initState();
  }
   Future<void> _initializeApp() async {
    // Add splash delay
    await Future.delayed(Duration(seconds: 2));   
    final authProvider = Provider.of<AuthProvider>(context, listen: false);
    final isAuthenticated = await authProvider.checkAuth();

    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (_) => isAuthenticated ? MainScreen() : OnboardingOne(),
      ),
      (route) => false,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Image.asset(AppImages.splashBgImg);
  }
}