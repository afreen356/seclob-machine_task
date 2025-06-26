import 'package:flutter/material.dart';
import 'package:seclob_machine_task/core/constants/app_images.dart';
import 'package:seclob_machine_task/views/auth/login_screen.dart';
import 'package:seclob_machine_task/views/widgets/onboarding_layout.dart';


class OnboardingThree extends StatelessWidget {
  const OnboardingThree({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardingLayout(
      heading: 'Analyze & Boost Your',
      subheading: 'Earnings',
      description:
          "Get real-time reports, track performance and\nmaximize incentives with ease",
      imagePath: AppImages.recieveMoneyImg,
      idx: 2,
      buttonText: 'Sign in',
      onNext: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const LoginScreen()),
        );
      },
    );
  }
}
