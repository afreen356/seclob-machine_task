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
   
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
           height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 120),
              HeadingText('Welcome To'),
              SizedBox(height: 5),
              SubheadingText('Seclob'),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 15),
                child: Text(
                  "Start growing your business with our platform — track sales, manage clients, and maximize profits.",
                  // textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
              ),
              SizedBox(height: 50),
              Center(child: Image.asset(AppImages.moneyImg)),
              // SizedBox(height: 10,),
              SizedBox(
                height: 10,),
                buildIndicator(0),
                              SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: CustomButton('Next',(){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>OnboardingTwo()));
                      }),
                    )
          
            ],
          ),
        ),
      ),
    );
  }
}
