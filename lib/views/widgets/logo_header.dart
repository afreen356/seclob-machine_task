import 'package:flutter/material.dart';
import 'package:seclob_machine_task/core/constants/app_images.dart';

class LogoHeader extends StatelessWidget {
  const LogoHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: screenWidth * 0.05),
          child: Image.asset(
            AppImages.logoImg,
            height: screenWidth * 0.1, 
            width: screenWidth * 0.12,  
          ),
        ),
        SizedBox(width: screenWidth * 0.02), 
        Text(
          "seclob",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'PoligraphGrotesk',
            fontSize: screenWidth * 0.07, 
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class SquareBg extends StatelessWidget {
  final double screenHeight;

  const SquareBg({super.key, required this.screenHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight * 0.3,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.squareBg),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05), 
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome back!",
              style: TextStyle(
                color: Colors.white,
                fontSize: screenWidth * 0.06, 
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: screenWidth * 0.01), 
            Text(
              "Welcome back to your workspace.",
              style: TextStyle(
                color: Colors.white,
                fontSize: screenWidth * 0.035, 
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
