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
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
           height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 120),
              HeadingText('Manage Your Partners'),
              SizedBox(height: 5),
              SubheadingText('Seamlessly'),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 15),
                child: Text(
                  "Add view and collaborate with your team or resellers,\n all from a single dashboard",
                  // textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
              ),
              SizedBox(height: 50),
              Center(child: Image.asset(AppImages.trustImg)),
              // SizedBox(height: 10,),
              SizedBox(
                height: 10,),
                buildIndicator(1),
                              SizedBox(height: 50,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: CustomButton('Next',(){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>OnboardingThree()));
                      }),
                    )
              
            ],
          ),
        ),
      ),
    );
  }
}