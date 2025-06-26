import 'package:flutter/material.dart';
import 'package:seclob_machine_task/core/constants/app_images.dart';
import 'package:seclob_machine_task/views/onboarding/onboarding3.dart';
import 'package:seclob_machine_task/views/widgets/onboarding_layout.dart';


class OnboardingTwo extends StatelessWidget {
  const OnboardingTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardingLayout(
      heading: 'Manage Your Partners',
      subheading: 'Seamlessly',
      description:
          "Add, view and collaborate with your team or resellers,all from a single dashboard",
      imagePath: AppImages.trustImg,
      idx: 1,
      buttonText: 'Next',
      onNext: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const OnboardingThree()),
        );
      },
    );
  }
}
