import 'package:flutter/material.dart';
import 'package:seclob_machine_task/core/widgets/custom_button.dart';
import 'package:seclob_machine_task/core/widgets/custom_indicator.dart';
import 'package:seclob_machine_task/core/widgets/custom_text.dart';

class OnboardingLayout extends StatelessWidget {
  final String heading;
  final String subheading;
  final String description;
  final String imagePath;
  final int idx;
  final String buttonText;
  final VoidCallback onNext;

  const OnboardingLayout({
    super.key,
    required this.heading,
    required this.subheading,
    required this.description,
    required this.imagePath,
    required this.idx,
    required this.buttonText,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;

    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.06),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: height * 0.16),
                      HeadingText(heading),
                      SizedBox(height: height * 0.008),
                      SubheadingText(subheading),
                      SizedBox(height: height * 0.015),
                      Text(
                        description,
                        style: TextStyle(
                          fontSize: width * 0.038,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: height * 0.05),
                      Center(
                        child: Image.asset(
                          imagePath,
                          width: width * 0.75,
                          height: height * 0.35,
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(height: height * 0.02),
                      buildIndicator(idx),
                      SizedBox(height: height * 0.05),
                      CustomButton(buttonText, onNext),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
