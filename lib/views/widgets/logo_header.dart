import 'package:flutter/material.dart';
import 'package:seclob_machine_task/core/constants/app_images.dart';

class LogoHeader extends StatelessWidget {
  const LogoHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(    
      children: [   
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Image.asset(AppImages.logoImg,height: 40,width: 50,),
            ),
            // SizedBox(width: 10,),
            Text(
              "seclob",
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'PoligraphGrotesk',
                fontSize: 28,
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
      height: MediaQuery.of(context).size.height * 0.3,
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
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome back!",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w500
              ),
            ),
            Text(
              "Welcome back to your workspace.",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
