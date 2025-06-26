import 'package:flutter/material.dart';
import 'package:seclob_machine_task/core/constants/app_images.dart';
import 'package:seclob_machine_task/core/widgets/custom_button.dart';
import 'package:seclob_machine_task/core/widgets/custom_indicator.dart';
import 'package:seclob_machine_task/core/widgets/custom_text.dart';
import 'package:seclob_machine_task/views/onboarding/onboarding2.dart';

class OnboardingOne extends StatefulWidget {
  const OnboardingOne({super.key});

  @override
  State<OnboardingOne> createState() => _OnboardingOneState();
}

class _OnboardingOneState extends State<OnboardingOne> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;

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
                HeadingText('Welcome To'),
                SizedBox(height: height * 0.008),
                SubheadingText('Seclob'),
                SizedBox(height: height * 0.015),
                Text(
                  "Start growing your business with our platform — track sales, manage clients, and maximize profits.",
                  style: TextStyle(
                    fontSize: width * 0.038,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: height * 0.05),
                Center(
                  child: Image.asset(
                    AppImages.moneyImg,
                    width: width * 0.75,
                    height: height * 0.35,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: height * 0.015),
                buildIndicator(0),
                SizedBox(height: height * 0.035),
                CustomButton(
                  'Next',
                  () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => OnboardingTwo(),
                      ),
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
