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
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
           height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 120),
              HeadingText('Analyze & Boost Your'),
              SizedBox(height: 5),
              SubheadingText('Earnings'),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 15),
                child: Text(
                  "Get real-time reports,track performance and\n maximize incentives with ease",
                  // textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
              ),
              SizedBox(height: 50),
              Center(child: Image.asset(AppImages.recieveMoneyImg)),
              // SizedBox(height: 10,),
              SizedBox(
                height: 10,),
                buildIndicator(2),
                              SizedBox(height: 50,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: CustomButton('Sign in',(){
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context)=>LoginScreen()));
                      }),
                    )
          
            ],
          ),
        ),
      ),
    );
  }
}