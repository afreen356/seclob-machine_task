import 'package:flutter/material.dart';
import 'package:seclob_machine_task/core/constants/app_images.dart';
import 'package:seclob_machine_task/core/widgets/custom_button.dart';
import 'package:seclob_machine_task/core/widgets/custom_indicator.dart';
import 'package:seclob_machine_task/core/widgets/custom_text.dart';
import 'package:seclob_machine_task/views/onboarding/onboarding3.dart';

class OnboardingTwo extends StatefulWidget {
  const OnboardingTwo({super.key});

  @override
  State<OnboardingTwo> createState() => _OnboardingTwoState();
}

class _OnboardingTwoState extends State<OnboardingTwo> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: height,
          width: width,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.06),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height * 0.12),
                HeadingText('Manage Your Partners'),
                SizedBox(height: height * 0.008),
                SubheadingText('Seamlessly'),
                SizedBox(height: height * 0.015),
                Text(
                  "Add, view and collaborate with your team or resellers,\nall from a single dashboard",
                  style: TextStyle(
                    fontSize: width * 0.038,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: height * 0.05),
                Center(
                  child: Image.asset(
                    AppImages.trustImg,
                    width: width * 0.75,
                    height: height * 0.35,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: height * 0.02),
                buildIndicator(1),
                SizedBox(height: height * 0.05),
                CustomButton(
                  'Next',
                  () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => OnboardingThree()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
