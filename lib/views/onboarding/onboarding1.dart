import 'package:flutter/material.dart';
import 'package:seclob_machine_task/core/constants/app_images.dart';
import 'package:seclob_machine_task/views/onboarding/onboarding2.dart';

import 'package:seclob_machine_task/views/widgets/onboarding_layout.dart';

class OnboardingOne extends StatelessWidget {
  const OnboardingOne({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardingLayout(
      heading: 'Welcome To',
      subheading: 'Seclob',
      description:
          "Start growing your business with our platform — track sales, manage clients, and maximize profits.",
      imagePath: AppImages.moneyImg,
      idx: 0,
      buttonText: 'Next',
      onNext: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const OnboardingTwo()),
        );
      },
    );
  }
}
