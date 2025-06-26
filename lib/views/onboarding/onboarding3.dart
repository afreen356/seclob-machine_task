import 'package:flutter/material.dart';
import 'package:seclob_machine_task/core/constants/app_images.dart';
import 'package:seclob_machine_task/core/widgets/custom_button.dart';
import 'package:seclob_machine_task/core/widgets/custom_indicator.dart';
import 'package:seclob_machine_task/core/widgets/custom_text.dart';
import 'package:seclob_machine_task/views/auth/login_screen.dart';

class OnboardingThree extends StatelessWidget {
  const OnboardingThree({super.key});

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
                HeadingText('Analyze & Boost Your'),
                SizedBox(height: height * 0.008),
                SubheadingText('Earnings'),
                SizedBox(height: height * 0.015),
                Text(
                  "Get real-time reports, track performance and\nmaximize incentives with ease",
                  style: TextStyle(
                    fontSize: width * 0.038,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: height * 0.05),
                Center(
                  child: Image.asset(
                    AppImages.recieveMoneyImg,
                    width: width * 0.75,
                    height: height * 0.35,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: height * 0.02),
                buildIndicator(2),
                SizedBox(height: height * 0.05),
                CustomButton(
                  'Sign in',
                  () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const LoginScreen()),
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
